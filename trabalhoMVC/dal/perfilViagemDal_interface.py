from abc import ABC, abstractmethod

class PerfilViagemDALInterface(ABC):
    @abstractmethod
    def criar_perfil(self, perfilViagem):
        pass

    @abstractmethod
    def obter_perfil_por_usuario(self, usuario_id):
        pass
