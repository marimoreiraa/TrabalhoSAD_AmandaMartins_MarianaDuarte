from database.database import Database
from model import recomendacao

class RecomendacaoDAL:
    def __init__(self):
        self.db = Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def criar_recomendacao(self, recomendacao,perfilViagem):
        
        # Busca os destinos que atendem aos critérios
        mes = perfilViagem.getMesViagem()
        tipo_destino = perfilViagem.getTipoDestino()
        qtd_pessoas = perfilViagem.getNumeroPessoas()
        orcamento = perfilViagem.getOrcamento()

        query = """
            SELECT id FROM destino
            WHERE mes_viagem = %s
              AND tipo_destino = %s
              AND numero_pessoas = %s
              AND orcamento <= %s
        """
        params = (mes, tipo_destino, qtd_pessoas, orcamento)
        destinos = self.db.execute_query(query, params)

        if len(destinos) != 0:
            # Insere a recomendação na tabela 
            usuario_id = recomendacao.getUsuarioId()
            perfil_usuario_id = recomendacao.getPerfilUsuarioId()

            query = """
                INSERT INTO recomendacao (usuario_id, perfil_viagem_id, data_recomendacao)
                VALUES (%s, %s, NOW())
            """
            params = (usuario_id, perfil_usuario_id)
            self.db.execute_query(query, params)
            
            # Recupera o ID da recomendação gerada
            query = """SELECT * 
                    FROM recomendacao 
                    WHERE usuario_id =  %s
                    AND perfil_viagem_id =  %s"""
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

    def obter_recomendacoes_por_usuario_e_perfil(self, usuario_id,perfil_viagem_id):
        query = """
            SELECT r.id, r.data_recomendacao, p.mes_viagem, p.numero_pessoas, p.orcamento_por_pessoa,
                p.tipo_destino
            FROM  recomendacao r
            JOIN perfil_viagem p ON r.perfil_viagem_id = p.id
            WHERE r.usuario_id = %s AND p.id = %s
        """
        params = (usuario_id, perfil_viagem_id)
        return self.db.execute_query(query, params)

    
    def obter_recomendacoes_por_usuario(self, usuario_id):
        query = """
            SELECT r.id, r.data_recomendacao, p.mes_viagem, p.numero_pessoas, 
                   p.orcamento_por_pessoa AS orcamento, p.tipo_destino
            FROM recomendacao r
            JOIN perfil_viagem p ON r.perfil_viagem_id = p.id
            WHERE r.usuario_id = %s
            ORDER BY r.data_recomendacao DESC
        """
        params = (usuario_id,)
        return self.db.execute_query(query, params)