from abc import ABC, abstractmethod

class RecomendacaoDALInterface(ABC):
    @abstractmethod
    def obter_recomendacoes_por_usuario_e_perfil(self, usuario_id, perfil_viagem_id):
        pass

    @abstractmethod
    def obter_recomendacoes_por_usuario(self, usuario_id):
        pass

    @abstractmethod
    def criar_recomendacao(self, recomendacao, perfilViagem):
        pass
