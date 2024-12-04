from sqlalchemy import Column, Integer, Float, ForeignKey, Enum
from sqlalchemy.orm import relationship
from database.database import Base
from enums import TipoDestino, NivelViagem, MesViagem

class PerfilViagem(Base):
    __tablename__ = 'perfis_viagem'

    id = Column(Integer, primary_key=True, autoincrement=True)
    usuario_id = Column(Integer, ForeignKey('usuarios.id'), nullable=False)  # Relacionamento com o usuário
    mes_viagem = Column(Enum(MesViagem), nullable=False)  # Mês de viagem
    numero_pessoas = Column(Integer, nullable=False)  # Quantidade de viajantes
    orcamento_por_pessoa = Column(Float, nullable=False)
    tipo_destino = Column(Enum(TipoDestino), nullable=False)
    nivel_viagem = Column(Enum(NivelViagem), nullable=False)

    recomendacoes = relationship("Recomendacao", back_populates="perfil_viagem")

