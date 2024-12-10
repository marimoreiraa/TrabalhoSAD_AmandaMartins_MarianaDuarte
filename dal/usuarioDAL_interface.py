from abc import ABC, abstractmethod

class UsuarioDALInterface(ABC):
    @abstractmethod
    def cadastrar_usuario(self, usuario):
        pass

    @abstractmethod
    def verificar_email(self, email):
        pass

    @abstractmethod
    def obter_hash_senha(self, email):
        pass

    @abstractmethod
    def validar_login(self, email, senha):
        pass
