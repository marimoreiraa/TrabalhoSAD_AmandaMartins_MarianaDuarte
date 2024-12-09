from database.database import Database
import bcrypt
from model import usuario

class UsuarioDAL:
    def __init__(self):
        self.db = Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def cadastrar_usuario(self, usuario):
        nome = usuario.getNome()
        email = usuario.getEmail()
        senha = usuario.getSenha()  # Agora, o campo `senha` já deve ser o hash.

        query = """
            INSERT INTO usuario (nome, email, senha)
            VALUES (%s, %s, %s)
        """
        params = (nome, email, senha)
        self.db.execute_query(query, params)
    
    def verificar_email(self, email):
        query = "SELECT * FROM usuario WHERE email = %s"
        params = (email,)
        result = self.db.execute_query(query, params)
        return result

    def obter_hash_senha(self, email):
        query = "SELECT senha FROM usuario WHERE email = %s"
        params = (email,)
        result = self.db.execute_query(query, params)
        if result and len(result) > 0:
            return result[0]['senha']  # Retorna o hash da senha
        return None

    def validar_login(self, email, senha):
        # Obtém o hash armazenado para o email fornecido
        hash_armazenado = self.obter_hash_senha(email)
        if hash_armazenado:
            return bcrypt.checkpw(senha.encode('utf-8'), hash_armazenado.encode('utf-8'))
        return False

