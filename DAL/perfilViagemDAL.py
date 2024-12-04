from database import Database

class PerfilViagemDAL:
    def __init__(self, db_config):
        self.db = Database(**db_config)

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def criar_perfil(self, usuario_id, mes_viagem, numero_pessoas, orcamento_por_pessoa, tipo_destino, nivel_viagem):
        query = """
            INSERT INTO perfis_viagem (usuario_id, mes_viagem, numero_pessoas, orcamento_por_pessoa, tipo_destino, nivel_viagem)
            VALUES (%s, %s, %s, %s, %s, %s)
        """
        params = (usuario_id, mes_viagem, numero_pessoas, orcamento_por_pessoa, tipo_destino, nivel_viagem)
        self.db.execute_query(query, params)

    def obter_perfil_por_usuario(self, usuario_id):
        query = "SELECT * FROM perfis_viagem WHERE usuario_id = %s"
        params = (usuario_id,)
        return self.db.execute_query(query, params)
