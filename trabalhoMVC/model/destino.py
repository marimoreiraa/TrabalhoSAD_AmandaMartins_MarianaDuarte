class Destino:
    def __init__(self, id, nome, pais, estado,descricao, mes,imagem_id,orcamento, clima, diarias):
        self.id = id
        self.nome = nome
        self.pais = pais
        self.estado = estado
        self.descricao = descricao
        self.mes = mes
        self.imagem_id = imagem_id 
        self.orcamento = orcamento
        self.clima = clima
        self.diarias = diarias

    def getId(self):
        return self.id
    def getNome(self):
        return self.nome
    def getPais(self):
        return self.pais
    def getEstado(self):
        return self.estado
    def getMes(self):
        return self.mes
    def getImagemId(self):
        return self.imagem_id
    def getOrcamento(self):
        return self.orcamento
    def getClima(self):
        return self.clima
    def getDiarias(self):
        return self.diarias