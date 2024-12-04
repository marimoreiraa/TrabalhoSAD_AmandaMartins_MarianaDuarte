from sqlalchemy import Column, Integer, ForeignKey, DateTime
from sqlalchemy.orm import relationship
from database.database import Base
from datetime import datetime

class Recomendacao(Base):
    __tablename__ = 'recomendacoes'

    id = Column(Integer, primary_key=True, autoincrement=True)
    usuario_id = Column(Integer, ForeignKey('usuarios.id'), nullable=False)
    perfil_viagem_id = Column(Integer, ForeignKey('perfis_viagens.id'), nullable=False)
    data_recomendacao = Column(DateTime, default=datetime.now)  
    destinos = relationship("Destino", secondary="recomendacao_destino", back_populates="recomendacoes") 

    usuario = relationship("Usuario", back_populates="recomendacoes")
    perfil_viagem = relationship("PerfilViagem", back_populates="recomendacoes")

