from database import Database

class DestinoDAL:
    def __init__(self, db_config):
        self.db = Database(**db_config)

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def obter_destinos(self):
        query = "SELECT * FROM destinos"
        return self.db.execute_query(query)
