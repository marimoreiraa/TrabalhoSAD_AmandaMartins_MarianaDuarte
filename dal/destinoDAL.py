from database.database import Database

class DestinoDAL:
    def __init__(self):
        self.db = Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def obter_destinos_por_recomendacao(self, recomendacao_id):
        query = """
            SELECT d.id, d.nome, d.descricao, d.orcamento,d.clima,i.imagem_url
            FROM destino d
            JOIN recomendacao_destino rd ON d.id = rd.destino_id
            JOIN imagem_destino i ON d.imagem_id = i.id
            WHERE rd.recomendacao_id = %s
        """
        params = (recomendacao_id,)
        return self.db.execute_query(query, params)
