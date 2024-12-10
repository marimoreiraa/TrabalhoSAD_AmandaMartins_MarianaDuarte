from dal.perfilViagemDal_interface import PerfilViagemDALInterface
from database.database import Database

class PerfilViagemDAL(PerfilViagemDALInterface):
    def __init__(self):
        self.db = Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def criar_perfil(self, perfilViagem):
        usuario_id = perfilViagem.getUsuarioId()
        mes = perfilViagem.getMes()
        orcamento = perfilViagem.getOrcamento()
        clima = perfilViagem.getClima()
        diarias = perfilViagem.getDiarias()

        query = """
            INSERT INTO perfil_viagem (usuario_id, mes_viagem,orcamento, clima, diarias)
            VALUES (%s, %s, %s, %s, %s)
        """
        params = (usuario_id, mes, orcamento, clima, diarias)
        self.db.execute_query(query, params)
        
        query = "SELECT MAX(id) AS max_id FROM perfil_viagem"
        result = self.db.execute_query(query)
        perfil_viagem_id = result[0]["max_id"]
        
        if perfil_viagem_id is None or perfil_viagem_id == 0:
            print("Erro: Nenhum ID foi gerado para o perfil de viagem")
            return None
        return perfil_viagem_id
    
    def obter_perfil_por_usuario(self, usuario_id):
        query = "SELECT * FROM perfil_viagem WHERE usuario_id = %s"
        params = (usuario_id,)
        return self.db.execute_query(query, params)
