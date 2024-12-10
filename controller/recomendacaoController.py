from flask import Blueprint, render_template, request, redirect, url_for, session
from dal.recomendacoesDAL import RecomendacaoPorClima, RecomendacaoPorDiarias, RecomendacaoPorOrcamento
from model.perfilviagem import PerfilViagem
from model.recomendacao import Recomendacao
from dal.recomendacoesDAL_interface import RecomendacaoDALInterface
from dal.perfilViagemDal_interface import PerfilViagemDALInterface
from dal.destinoDAL_interface import DestinoDALInterface

recomendacao_bp = Blueprint('recomendacao', __name__)

class RecomendacaoController:
    def __init__(self, recomendacao_dal: RecomendacaoDALInterface, perfil_viagem_dal: PerfilViagemDALInterface, destino_dal: DestinoDALInterface, usuario_controller):
        self.recomendacao_dal = recomendacao_dal
        self.perfil_viagem_dal = perfil_viagem_dal
        self.destino_dal = destino_dal

        # Mensagens de feedback
        self.MENSAGENS = {
            "erro_sessao": "Sua sessão expirou. Faça login novamente.",
            "sem_recomendacoes": "Não temos destinos compatíveis com as informações da viagem solicitada.",
            "historico_vazio": "Você ainda não gerou nenhuma recomendação.",
        }

        # Registrar as rotas
        recomendacao_bp.add_url_rule('/', view_func=self.inicio, methods=['GET', 'POST'])
        recomendacao_bp.add_url_rule('/recomendacao/<tipo>', view_func=self.recomendacao, methods=['GET', 'POST'])
        recomendacao_bp.add_url_rule('/recomendacao/resultado', view_func=self.resultado, methods=['GET', 'POST'])
        recomendacao_bp.add_url_rule('/historico', view_func=self.historico, methods=['GET'])

    def criar_recomendacao(self, tipo, id_usuario, mes, orcamento=None, diarias=None, clima=None):
        perfil_viagem = PerfilViagem(None, id_usuario, mes, diarias, orcamento, clima)
        perfil_viagem_id = self.perfil_viagem_dal.criar_perfil(perfil_viagem)
        recomendacao = Recomendacao(None, id_usuario, perfil_viagem_id, tipo, None)

        session['tipo_recomendacao'] = tipo

        # Escolher a implementação do DAL baseada no tipo de recomendação
        if tipo == 'Orcamento':
            self.recomendacao_dal = RecomendacaoPorOrcamento()
        elif tipo == 'Clima':
            self.recomendacao_dal = RecomendacaoPorClima()
        elif tipo == 'Diarias':
            self.recomendacao_dal = RecomendacaoPorDiarias()

        if self.recomendacao_dal:
            self.recomendacao_dal.criar_recomendacao(recomendacao, perfil_viagem)

        return perfil_viagem_id

    def _obter_historico_usuario(self, id_usuario):
        recomendacoes = self.recomendacao_dal.obter_recomendacoes_por_usuario(id_usuario)
        historico = []
        for recomendacao in recomendacoes:
            destinos = self.destino_dal.obter_destinos_por_recomendacao(recomendacao['id'])
            if destinos:
                historico.append({"recomendacao": recomendacao, "destinos": destinos})
        return historico

    def inicio(self):
        nome_usuario = session.get('nome_usuario', 'Usuário')
        return render_template('home.html', nome_usuario=nome_usuario)

    def recomendacao(self, tipo):
        if request.method == 'POST':
            mes = request.form['mes']
            parametros = {
                'Orcamento': {'orcamento': request.form.get('orcamento')},
                'Diarias': {'diarias': request.form.get('diarias')},
                'Clima': {'clima': request.form.get('clima')},
            }
            if tipo in parametros:
                perfil_viagem_id = self.criar_recomendacao(tipo, session.get('id_usuario'), mes, **parametros[tipo])
                session['perfil_viagem_id'] = perfil_viagem_id
                return redirect(url_for('recomendacao.resultado'))
        return render_template(f'recomendacao{tipo}.html')

    def resultado(self):
        nome_usuario = session.get('nome_usuario', 'Usuário')
        id_usuario = session.get('id_usuario')
        perfil_viagem_id = session.get('perfil_viagem_id')

        if not id_usuario or not perfil_viagem_id:
            return redirect(url_for('usuario.login'))

        tipo_recomendacao = session.get('tipo_recomendacao')

        if tipo_recomendacao == 'Orcamento':
            recomendacao_dal = RecomendacaoPorOrcamento()
        elif tipo_recomendacao == 'Clima':
            recomendacao_dal = RecomendacaoPorClima()
        elif tipo_recomendacao == 'Diarias':
            recomendacao_dal =RecomendacaoPorDiarias()
        else:
            return render_template('home.html', nome_usuario=nome_usuario, mensagem="Tipo de recomendação inválido.")

        recomendacao = recomendacao_dal.obter_recomendacoes_por_usuario_e_perfil(id_usuario, perfil_viagem_id)
        
        if recomendacao:
            destinos = self.destino_dal.obter_destinos_por_recomendacao(recomendacao[0]['id'])
            return render_template('recomendacoes.html', recomendacoes=recomendacao, destinos=destinos, nome_usuario=nome_usuario)

        return render_template('home.html', nome_usuario=nome_usuario, mensagem=self.MENSAGENS['sem_recomendacoes'])

    def historico(self):
        id_usuario = session.get('id_usuario')
        if not id_usuario:
            return redirect(url_for('usuario.login'))

        historico = self._obter_historico_usuario(id_usuario)
        if historico:
            return render_template('historico.html', historico=historico, nome_usuario=session.get('nome_usuario'))

        return render_template('home.html', mensagem=self.MENSAGENS['historico_vazio'])
