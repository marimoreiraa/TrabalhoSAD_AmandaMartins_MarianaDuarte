from database.database import Database
from model import recomendacao

class RecomendacaoDAL:
    def __init__(self):
        self.db = Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def criar_recomendacao(self, recomendacao, perfilViagem):
        # Recupera os dados do perfil de viagem
        mes = perfilViagem.getMes()
        orcamento = perfilViagem.getOrcamento()
        clima = perfilViagem.getClima()
        diarias = perfilViagem.getDiarias()
        tipo_recomendacao = recomendacao.getTipoRecomendacao()

        destinos = []
        
        # Chama a função correspondente ao tipo de recomendação
        if tipo_recomendacao == 'Orcamento':
            destinos = self._recomendar_por_orcamento(orcamento,mes)
        elif tipo_recomendacao == 'Clima':
            destinos = self._recomendar_por_clima(clima,mes)
        elif tipo_recomendacao == 'Diarias':
            destinos = self._recomendar_por_diarias(diarias,mes)
        if destinos:
            # Insere a recomendação na tabela 
            usuario_id = recomendacao.getUsuarioId()
            perfil_usuario_id = recomendacao.getPerfilUsuarioId()

            query = """
                INSERT INTO recomendacao (usuario_id, perfil_viagem_id, tipo_recomendacao, data_recomendacao)
                VALUES (%s, %s, %s, NOW())
            """
            params = (usuario_id, perfil_usuario_id, tipo_recomendacao)
            self.db.execute_query(query, params)
            
            # Recupera o ID da recomendação gerada
            query = """
                SELECT * 
                FROM recomendacao 
                WHERE usuario_id = %s AND perfil_viagem_id = %s
            """
            params = (usuario_id, perfil_usuario_id)
            recomendacao_id = self.db.execute_query(query, params)[0]['id']

            # Associa os destinos à recomendação
            for destino in destinos:
                query = """
                    INSERT INTO recomendacao_destino (recomendacao_id, destino_id)
                    VALUES (%s, %s)
                """
                params = (recomendacao_id, destino["id"])
                self.db.execute_query(query, params)

    def _recomendar_por_orcamento(self, orcamento,mes):
        query = """
            SELECT * FROM destino
            WHERE mes_viagem = %s AND orcamento <= %s
        """
        params = (mes,orcamento)
        return self.db.execute_query(query, params)

    def _recomendar_por_clima(self, clima,mes):
        query = """
            SELECT * FROM destino
            WHERE mes_viagem = %s AND clima = %s
        """
        params = (mes,clima)
        return self.db.execute_query(query, params)

    def _recomendar_por_diarias(self, diarias,mes):
        query = """
            SELECT * FROM destino
            WHERE mes_viagem = %s AND diarias_ideais >= %s
        """
        params = (mes,diarias)
        return self.db.execute_query(query, params)

    def obter_recomendacoes_por_usuario_e_perfil(self, usuario_id, perfil_viagem_id):
        query = """
            SELECT r.id, r.data_recomendacao, p.mes_viagem,p.orcamento, p.diarias, p.clima
            FROM recomendacao r
            JOIN perfil_viagem p ON r.perfil_viagem_id = p.id
            WHERE r.usuario_id = %s AND p.id = %s
        """
        params = (usuario_id, perfil_viagem_id)
        return self.db.execute_query(query, params)

    def obter_recomendacoes_por_usuario(self, usuario_id):
        query = """
            SELECT r.id, r.data_recomendacao, r.tipo_recomendacao, p.mes_viagem,p.orcamento, p.diarias, p.clima
            FROM recomendacao r
            JOIN perfil_viagem p ON r.perfil_viagem_id = p.id
            WHERE r.usuario_id = %s
            ORDER BY r.data_recomendacao DESC
        """
        params = (usuario_id,)
        return self.db.execute_query(query, params)
