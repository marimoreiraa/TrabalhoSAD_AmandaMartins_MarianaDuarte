from sqlalchemy.orm import Session
from model.destino import Destino

class DestinoDAL:
    def __init__(self, db: Session):
        self.db = db

    def buscar_destinos(self) -> list:
        return self.db.query(Destino).all()

    def buscar_destino_por_id(self, destino_id: int) -> Destino:
        return self.db.query(Destino).filter(Destino.id == destino_id).first()
