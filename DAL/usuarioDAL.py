from sqlalchemy.orm import Session
from model.usuario import Usuario
from sqlalchemy.exc import IntegrityError
from werkzeug.security import generate_password_hash, check_password_hash  # Para segurança das senhas

class UsuarioDAL:
    def __init__(self, db: Session):
        self.db = db

    def criar_usuario(self, username: str, email: str, senha: str) -> Usuario:
        try:
            hashed_password = generate_password_hash(senha)
            novo_usuario = Usuario(username=username, email=email, senha=hashed_password)
            self.db.add(novo_usuario)
            self.db.commit()
            self.db.refresh(novo_usuario)
            return novo_usuario
        except IntegrityError:
            self.db.rollback()
            return None  # Caso haja erro de integridade (ex: email ou username já existente)

    def verificar_senha(self, usuario: Usuario, senha: str) -> bool:
        return check_password_hash(usuario.senha, senha)

    def buscar_usuario_por_email(self, email: str) -> Usuario:
        return self.db.query(Usuario).filter(Usuario.email == email).first()

    def buscar_usuario_por_username(self, username: str) -> Usuario:
        return self.db.query(Usuario).filter(Usuario.username == username).first()
