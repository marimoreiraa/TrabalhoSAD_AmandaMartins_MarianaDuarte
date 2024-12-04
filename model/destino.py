from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship
from database.database import Base

class Destino(Base):
    __tablename__ = 'destinos'

    id = Column(Integer, primary_key=True, autoincrement=True)
    nome = Column(String, nullable=False)
    descricao = Column(String, nullable=False)
    imagem_url = Column(String)  # URL da imagem do destino

    recomendacoes = relationship("Recomendacao", secondary="recomendacao_destino", back_populates="destinos")

