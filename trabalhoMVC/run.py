from flask import Flask
from controller import register_blueprints
from database.database import Database
from dal.recomendacoesDAL import RecomendacaoDAL
from dal.recomendacoesDAL_interface import RecomendacaoDALInterface  # Importando a interface
from dal.perfilViagemDAL import PerfilViagemDAL
from dal.perfilViagemDal_interface import PerfilViagemDALInterface  # Importando a interface
from dal.destinoDAL import DestinoDAL
from dal.destinoDAL_interface import DestinoDALInterface  # Importando a interface
from dal.usuarioDAL import UsuarioDAL
from dal.usuarioDAL_interface import UsuarioDALInterface  # Importando a interface
from controller.recomendacaoController import RecomendacaoController
from controller.usuarioController import UsuarioController
from dotenv import load_dotenv
import os

def create_app():
    # Inicializa o Flask
    app = Flask(__name__, static_folder='./view/static', template_folder='./view/templates')
    load_dotenv()
    app.secret_key = os.getenv('APP_SECRET_KEY')

    # Configuração do banco de dados
    db = Database()
    db.setup_database()

    # Criação das instâncias do DAL
    usuario_dal = UsuarioDAL()
    perfil_viagem_dal = PerfilViagemDAL()
    destino_dal = DestinoDAL()
    recomendacao_dal = RecomendacaoDAL()

    # Criando o controlador de usuários
    usuario_controller = UsuarioController(usuario_dal)

    # Criando o controlador de recomendações e passando as dependências
    recomendacao_controller = RecomendacaoController(recomendacao_dal, perfil_viagem_dal, destino_dal, usuario_controller)


    # Registrando os blueprints
    register_blueprints(app)

    return app

def main():
    app = create_app()

    # Apenas uma vez, se necessário, habilite o método abaixo:
    # db.adicionar_destinos()  # Adiciona destinos ao banco de dados

    app.run(debug=True)

if __name__ == "__main__":
    main()
