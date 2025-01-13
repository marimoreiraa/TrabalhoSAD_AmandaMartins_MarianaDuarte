from flask import Blueprint, render_template, request, redirect, url_for, session
from dal.usuarioDAL_interface import UsuarioDALInterface
from model.usuario import Usuario
import bcrypt

usuario_bp = Blueprint('usuario', __name__)

class UsuarioController:
    def __init__(self, usuario_dal: UsuarioDALInterface):
        self.usuario_dal = usuario_dal

        # Mensagens de feedback
        self.MENSAGENS = {
            "usuario_nao_cadastrado": "Usuário não cadastrado",
            "email_ja_cadastrado": "Usuário já cadastrado com o email informado",
            "cadastro_sucesso": "Usuário cadastrado com sucesso!",
            "login_invalido": "Email ou senha inválidos",
        }

        # Registrar as rotas
        usuario_bp.add_url_rule('/', view_func=self.login, methods=['GET', 'POST'])
        usuario_bp.add_url_rule('/cadastrar', view_func=self.cadastro, methods=['GET', 'POST'])

    def _buscar_usuario_por_email(self, email):
        return self.usuario_dal.verificar_email(email)

    def _gerar_hash_senha(self, senha):
        salt = bcrypt.gensalt()
        return bcrypt.hashpw(senha.encode('utf-8'), salt).decode('utf-8')

    def _validar_login(self, email, senha):
        usuario = self.usuario_dal.verificar_email(email)
        if usuario and bcrypt.checkpw(senha.encode('utf-8'), usuario[0]['senha'].encode('utf-8')):
            return usuario[0]
        return None

    def login(self):
        if request.method == 'POST':
            email = request.form['email']
            senha = request.form['senha']

            usuario_existente = self._buscar_usuario_por_email(email)
            if not usuario_existente:
                return render_template('login.html', mensagem=self.MENSAGENS['usuario_nao_cadastrado'])

            usuario_validado = self._validar_login(email, senha)
            if usuario_validado:
                session['nome_usuario'] = usuario_validado['nome']
                session['id_usuario'] = usuario_validado['id']
                return redirect(url_for('recomendacao.inicio'))

            return render_template('login.html', mensagem=self.MENSAGENS['login_invalido'])
        return render_template('login.html')

    def cadastro(self):
        if request.method == 'POST':
            nome = request.form['nome']
            email = request.form['email']
            senha = request.form['senha']

            # Verifica se o email já existe
            usuario_existente = self._buscar_usuario_por_email(email)
            if usuario_existente:
                return render_template('cadastro.html', mensagem=self.MENSAGENS['email_ja_cadastrado'])

            hash_senha = self._gerar_hash_senha(senha)

            novo_usuario = Usuario(None, nome, email, hash_senha)
            self.usuario_dal.cadastrar_usuario(novo_usuario)

            return render_template('login.html', mensagem=self.MENSAGENS['cadastro_sucesso'])

        return render_template('cadastro.html')
