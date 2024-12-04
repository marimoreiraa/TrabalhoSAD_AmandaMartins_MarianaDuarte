from sqlalchemy.orm import Session
from model.perfilviagem import PerfilViagem

class PerfilViagemDAL:
    def __init__(self, db: Session):
        self.db = db

    def criar_perfil_viagem(self, usuario_id: int, mes_viagem: str, numero_pessoas: int, orcamento_por_pessoa: float, tipo_destino: str, nivel_viagem: str) -> PerfilViagem:
        perfil_viagem = PerfilViagem(
            usuario_id=usuario_id,
            mes_viagem=mes_viagem,
            numero_pessoas=numero_pessoas,
            orcamento_por_pessoa=orcamento_por_pessoa,
            tipo_destino=tipo_destino,
            nivel_viagem=nivel_viagem
        )
        self.db.add(perfil_viagem)
        self.db.commit()
        self.db.refresh(perfil_viagem)
        return perfil_viagem

    def buscar_perfil_viagem_por_usuario(self, usuario_id: int) -> PerfilViagem:
        return self.db.query(PerfilViagem).filter(PerfilViagem.usuario_id == usuario_id).first()
