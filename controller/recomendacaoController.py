from flask import Blueprint, Flask, flash, render_template, request, redirect, url_for, session
from dal import recomendacoesDAL, perfilViagemDAL, destinoDAL

recomendacao_bp = Blueprint('recomendacao', __name__)
recomendacoes_dal = recomendacoesDAL.RecomendacaoDAL()
perfil_viagem_dal = perfilViagemDAL.PerfilViagemDAL()
destino_dal = destinoDAL.DestinoDAL()

@recomendacao_bp.route('/', methods=['GET', 'POST'])
def inicio():
    nome_usuario = session.get('nome_usuario', 'Usuario')
    id_usuario = session.get('id_usuario','ID_Usuario')

    if request.method == 'POST':
        mes= request.form.get('mes')
        qtd_pessoas = request.form.get('qtd_pessoas')
        orcamento = request.form.get('orcamento')
        tipo_destino = request.form.get('tipo_destino')
        perfil_viagem_dal.criar_perfil(id_usuario,mes,qtd_pessoas,orcamento,tipo_destino)
        return redirect(url_for('recomendacao.recomendacao'))
    else:
        return render_template('home.html',nome_usuario=nome_usuario)

@recomendacao_bp.route('/recomendacao',methods=['GET'])
def recomendacao():
    return render_template('recomendacoes.html')