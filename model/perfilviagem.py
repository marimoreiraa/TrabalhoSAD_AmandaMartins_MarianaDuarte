class PerfilViagem:
    def __init__(self, id, usuario_id, mes,diarias, orcamento_por_pessoa, clima):
        self.id = id
        self.usuario_id = usuario_id
        self.mes = mes
        self.diarias = diarias
        self.orcamento_por_pessoa = orcamento_por_pessoa
        self.clima = clima
    
    def getId(self):
        return self.id

    def getUsuarioId(self):
        return self.usuario_id
    
    def getMes(self):
        return self.mes
    
    def getDiarias(self):
        return self.diarias
    
    def getOrcamento(self):
        return self.orcamento_por_pessoa
    
    def getClima(self):
        return self.clima
    
    