from sqlalchemy.orm import Session
from model.recomendacao import Recomendacao
from datetime import datetime

class RecomendacoesDAL:
    def __init__(self, db: Session):
        self.db = db

    def criar_recomendacao(self, usuario_id: int, perfil_usuario_id: int, destinos: list) -> Recomendacao:
        recomendacao = Recomendacao(
            usuario_id=usuario_id,
            perfil_usuario_id=perfil_usuario_id,
            data_recomendacao=datetime.now()
        )
        self.db.add(recomendacao)
        self.db.commit()
        self.db.refresh(recomendacao)

        # Adiciona os destinos à recomendação (associando-os)
        for destino in destinos:
            recomendacao.destinos.append(destino)

        self.db.commit()
        return recomendacao

    def buscar_recomendacoes_por_usuario(self, usuario_id: int) -> list:
        return self.db.query(Recomendacao).filter(Recomendacao.usuario_id == usuario_id).all()

    def buscar_recomendacao_por_id(self, recomendacao_id: int) -> Recomendacao:
        return self.db.query(Recomendacao).filter(Recomendacao.id == recomendacao_id).first()
