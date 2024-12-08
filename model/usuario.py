class Usuario:
    def __init__(self, id, nome, email, senha):
        self.id = id
        self.nome = nome
        self.email = email
        self.senha = senha
    
    def getId(self):
        return self.id
    
    def getNome(self):
        return self.nome
    
    def getEmail(self):
        return self.email
    
    def getSenha(self):
        return self.senha

