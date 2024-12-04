from database import Database

class UsuarioDAL:
    def __init__(self, db_config):
        self.db = Database(**db_config)

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def cadastrar_usuario(self, username, email, senha):
        query = """
            INSERT INTO usuarios (username, email, senha)
            VALUES (%s, %s, %s)
        """
        params = (username, email, senha)
        self.db.execute_query(query, params)

    def verificar_email(self, email):
        query = "SELECT * FROM usuarios WHERE email = %s"
        params = (email,)
        result = self.db.execute_query(query, params)
        return result

    def verificar_senha(self, usuario_id, senha):
        query = "SELECT * FROM usuarios WHERE id = %s AND senha = %s"
        params = (usuario_id, senha)
        result = self.db.execute_query(query, params)
        return result
