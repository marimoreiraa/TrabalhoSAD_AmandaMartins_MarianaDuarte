from database import Database

def setup_database():
    db = Database()
    db.connect()

    try:
        with open('script.sql', 'r') as sql_file:
            sql = sql_file.read()
        db.execute_query(sql)
        print("Banco de dados configurado com sucesso!")
    except Exception as e:
        print(f"Erro ao configurar o banco de dados: {e}")
    finally:
        db.close()
