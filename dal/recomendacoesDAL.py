import sys
sys.path.insert(1, '/home/mariana/Documentos/TrabalhoSAD_AmandaMartins_MarianaDuarte/database')
import database

class RecomendacaoDAL:
    def __init__(self):
        self.db = database.Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def criar_recomendacao(self, usuario_id, perfil_usuario_id, destinos):
        query = """
            INSERT INTO recomendacoes (usuario_id, perfil_usuario_id, data_recomendacao)
            VALUES (%s, %s, NOW())
        """
        params = (usuario_id, perfil_usuario_id)
        self.db.execute_query(query, params)
        
        # Recupera o ID da recomendação gerada
        query = "SELECT LAST_INSERT_ID()"
        recomendacao_id = self.db.execute_query(query)[0]["LAST_INSERT_ID()"]

        # Associa os destinos à recomendação
        for destino_id in destinos:
            query = """
                INSERT INTO recomendacao_destino (recomendacao_id, destino_id)
                VALUES (%s, %s)
            """
            params = (recomendacao_id, destino_id)
            self.db.execute_query(query, params)

    def obter_recomendacoes_por_usuario(self, usuario_id):
        query = """
            SELECT r.id, r.data_recomendacao, p.mes_viagem, p.numero_pessoas, p.orcamento_por_pessoa,
                   p.tipo_destino, p.nivel_viagem
            FROM recomendacoes r
            JOIN perfis_viagem p ON r.perfil_usuario_id = p.id
            WHERE r.usuario_id = %s
        """
        params = (usuario_id,)
        return self.db.execute_query(query, params)
