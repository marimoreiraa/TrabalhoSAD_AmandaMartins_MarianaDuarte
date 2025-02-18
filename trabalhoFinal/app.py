from flask import Flask, render_template, request, redirect, url_for
from flask_cors import CORS
from db import get_db_connection
from id3 import train_id3, predict
import os

app = Flask(__name__)
CORS(app)

# Caminho do arquivo de controle para evitar execuções repetidas
INIT_FLAG_PATH = os.path.join(os.path.dirname(__file__), "database", "database_initialized.flag")


def initialize_database():
    """Inicializa o banco de dados apenas se ainda não foi configurado."""
    conn = get_db_connection()
    cursor = conn.cursor()

    # Verifica se o banco já foi inicializado
    cursor.execute("SHOW TABLES LIKE 'symptoms'")
    if cursor.fetchone():  # Se a tabela existe, não precisa reinicializar
        print("✅ Banco de dados já inicializado. Pulando execução.")
        cursor.close()
        conn.close()
        return

    print("⚙️ Inicializando o banco de dados...")

    schema_path = os.path.join(os.path.dirname(__file__), "database", "schema.sql")
    with open(schema_path, "r", encoding="utf-8") as schema_file:
        schema_sql = schema_file.read()

    cursor.execute("CREATE DATABASE IF NOT EXISTS medical_diagnosis")
    conn.database = "medical_diagnosis"

    for statement in schema_sql.split(";"):
        if statement.strip():
            cursor.execute(statement)

    conn.commit()
    cursor.close()
    conn.close()

    # Criar um arquivo de controle para evitar novas execuções
    with open(INIT_FLAG_PATH, "w") as f:
        f.write("initialized")

    print("✅ Banco de dados inicializado com sucesso!")


# Página inicial
@app.route('/')
def home():
    return render_template("index.html")


# Página de Diagnóstico
@app.route('/diagnosis', methods=['GET', 'POST'])
def diagnosis():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("SELECT name FROM symptoms")
    symptoms = cursor.fetchall()


    cursor.close()
    conn.close()


    return render_template("diagnosis.html", symptoms=symptoms)

@app.route('/diagnosis/result', methods=['POST'])
def result():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    symptoms_selected = {key: value for key, value in request.form.items()}

    cursor.execute("""
        SELECT s.name AS symptom, t.intensity, d.name AS disease
        FROM training_data t
        JOIN symptoms s ON t.symptom_id = s.id
        JOIN diseases d ON t.disease_id = d.id
    """)
    training_data = cursor.fetchall()

    diagnosis_result = []
    if training_data:
        tree = train_id3(training_data)
        diagnosis_result = predict(tree, symptoms_selected)

    cursor.close()
    conn.close()

    return render_template("result.html", diagnosis=diagnosis_result)


# Página de Edição da Tabela de Treinamento
@app.route('/training-page', methods=['GET', 'POST'])
def training_page():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    if request.method == "POST":
        if "delete_entry" in request.form:
            entry_id = request.form.get("delete_entry")
            cursor.execute("DELETE FROM training_data WHERE id = %s", (entry_id,))

        conn.commit()

    cursor.execute("""
        SELECT t.id,s.name as symptom, t.intensity, d.name AS disease
        FROM training_data t
        JOIN symptoms s ON t.symptom_id = s.id
        JOIN diseases d ON t.disease_id = d.id
    """)
    training_data = cursor.fetchall()


    cursor.close()
    conn.close()
    return render_template("training.html", training_data=training_data)


@app.route('/training-page/add', methods=['GET', 'POST'])
def training_add():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Buscar doenças e sintomas
    cursor.execute("SELECT id, name FROM diseases")
    diseases = cursor.fetchall()

    cursor.execute("SELECT id, name FROM symptoms")
    symptoms = cursor.fetchall()

    if request.method == "POST":
        disease_id = request.form.get("disease")  
        symptoms_selected = {key.replace("symptom_", ""): value for key, value in request.form.items() if key.startswith("symptom_")}

        for symptom_id, intensity in symptoms_selected.items():
            if intensity != "Irrelevante":  
                cursor.execute(
                    "INSERT INTO training_data (disease_id, symptom_id, intensity) VALUES (%s, %s, %s)",
                    (disease_id, symptom_id, intensity)
                )

        conn.commit()
        return redirect(url_for('training_page')) 

    cursor.close()
    conn.close()
    return render_template("training_add.html", diseases=diseases, symptoms=symptoms)


# Página do Banco de Dados
@app.route('/database', methods=['GET', 'POST'])
def database():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    if request.method == "POST":
        if "delete_entry_symptom" in request.form:
            entry_id = request.form.get("delete_entry_symptom")
            cursor.execute("DELETE FROM symptoms WHERE id = %s", (entry_id,))
        if "delete_entry_disease" in request.form:
            entry_id = request.form.get("delete_entry_disease")
            cursor.execute("DELETE FROM training_data WHERE disease_id = %s", (entry_id,))
            cursor.execute("DELETE FROM diseases WHERE id = %s", (entry_id,))

        conn.commit()

    cursor.execute("SELECT id, name FROM symptoms")
    symptoms = cursor.fetchall()

    cursor.execute("SELECT id, name FROM diseases")
    diseases = cursor.fetchall()

    cursor.close()
    conn.close()

    return render_template("database.html", symptoms=symptoms, diseases=diseases)


# Adicionar Sintoma
@app.route('/database/add_symptom', methods=['GET', 'POST'])
def add_symptom():
    conn = get_db_connection()
    cursor = conn.cursor()

    if request.method == "POST":
        symptom_name = request.form.get("name")
        cursor.execute("INSERT INTO symptoms (name) VALUES (%s)", (symptom_name,))
        conn.commit()
        return redirect(url_for('database'))

    cursor.close()
    conn.close()

    return render_template("add_symptom.html")


# Adicionar Doença
@app.route('/database/add_disease', methods=['GET', 'POST'])
def add_disease():
    conn = get_db_connection()
    cursor = conn.cursor()

    if request.method == "POST":
        disease_name = request.form.get("name")
        cursor.execute("INSERT INTO diseases (name) VALUES (%s)", (disease_name,))
        conn.commit()
        return redirect(url_for('database'))

    cursor.close()
    conn.close()

    return render_template("add_disease.html")


if __name__ == '__main__':
    initialize_database()  
    app.run(host="0.0.0.0", port=5000, debug=True)
