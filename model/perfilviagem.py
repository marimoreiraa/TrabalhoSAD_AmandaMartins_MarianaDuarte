class PerfilViagem:
    def __init__(self, id, usuario_id, mes_viagem, numero_pessoas, orcamento_por_pessoa, tipo_destino):
        self.id = id
        self.usuario_id = usuario_id
        self.mes_viagem = mes_viagem  # Enum: MesViagem
        self.numero_pessoas = numero_pessoas
        self.orcamento_por_pessoa = orcamento_por_pessoa
        self.tipo_destino = tipo_destino  # Enum: TipoDestino
    
    def getId(self):
        return self.id

    def getUsuarioId(self):
        return self.usuario_id
    
    def getMesViagem(self):
        return self.mes_viagem
    
    def getNumeroPessoas(self):
        return self.numero_pessoas
    
    def getOrcamento(self):
        return self.orcamento_por_pessoa
    
    def getTipoDestino(self):
        return self.tipo_destino

