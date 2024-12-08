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

    def gerar_hash_senha(self, senha):
        salt = bcrypt.gensalt()
        return bcrypt.hashpw(senha.encode('utf-8'), salt)

    def verificar_senha(self, senha_fornecida, hash_armazenado):
        return bcrypt.checkpw(senha_fornecida.encode('utf-8'), hash_armazenado)

    def cadastrar_usuario(self, usuario):
        nome = usuario.getNome()
        email = usuario.getEmail()
        senha = usuario.getSenha()

        query = """
            INSERT INTO usuario (nome, email, senha)
            VALUES (%s, %s, %s)
        """
        # Cria o hash da senha
        hash_senha = self.gerar_hash_senha(senha)
        params = (nome, email, hash_senha.decode('utf-8'))  # Armazena como string no banco
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
            return self.verificar_senha(senha, hash_armazenado.encode('utf-8'))
        return False
