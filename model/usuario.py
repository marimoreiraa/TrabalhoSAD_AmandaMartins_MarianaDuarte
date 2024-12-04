from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import relationship
from database.database import Base

class Usuario(Base):
    __tablename__ = 'usuarios'

    id = Column(Integer, primary_key=True, autoincrement=True)
    username = Column(String, unique=True, nullable=False)
    email = Column(String, unique=True, nullable=False)
    senha = Column(String, nullable=False)

    recomendacoes = relationship("Recomendacao", back_populates="usuario")
