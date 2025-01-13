from abc import ABC, abstractmethod

class DestinoDALInterface(ABC):
    @abstractmethod
    def obter_destinos_por_recomendacao(self, recomendacao_id):
        pass
