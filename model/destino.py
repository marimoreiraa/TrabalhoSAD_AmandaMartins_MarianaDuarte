class Destino:
    def __init__(self, id, nome, pais, estado,descricao, imagem_id, mes_viagem, numero_pessoas,orcamento, tipo_destino):
        self.id = id
        self.nome = nome
        self.pais = pais
        self.estado = estado
        self.descricao = descricao
        self.imagem_id = imagem_id 
        self.mes_viagem = mes_viagem
        self.numero_pessoas = numero_pessoas
        self.orcamento = orcamento
        self.tipo_destino = tipo_destino

    def getId(self):
        return self.id
    def getNome(self):
        return self.nome
    def getPais(self):
        return self.pais
    def getEstado(self):
        return self.estado
    def getImagemId(self):
        return self.imagem_id
    def getMesViagem(self):
        return self.mes_viagem
    def getNumeroPessoas(self):
        return self.numero_pessoas
    def getOrcamento(self):
        return self.orcamento
    def getTipoDestino(self):
        return self.tipo_destino