from database import Database
import os
def setup_database():
    db = Database()
    db.connect()
    dir_atual = os.path.dirname(os.path.abspath(__file__))
    caminho_script = os.path.join(dir_atual, 'script.sql')

    try:
        with open(caminho_script, 'r') as sql_file:
            sql = sql_file.read()

        sql_comandos = sql.split(';')

        for comando in sql_comandos:
            comando = comando.strip()
            if comando:  
                db.execute_query(comando)
        print("Banco de dados configurado com sucesso!")
    except Exception as e:
        print(f"Erro ao configurar o banco de dados: {e}")
    finally:
        db.close()
