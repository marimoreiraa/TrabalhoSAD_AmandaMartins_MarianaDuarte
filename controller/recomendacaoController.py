from flask import Blueprint, Flask, flash, render_template, request, redirect, url_for, session
from dal import recomendacoesDAL, perfilViagemDAL, destinoDAL
from model.perfilviagem import PerfilViagem
from model.recomendacao import Recomendacao

recomendacao_bp = Blueprint('recomendacao', __name__)
recomendacoes_dal = recomendacoesDAL.RecomendacaoDAL()
perfil_viagem_dal = perfilViagemDAL.PerfilViagemDAL()
destino_dal = destinoDAL.DestinoDAL()

@recomendacao_bp.route('/', methods=['GET','POST'])
def inicio():
    nome_usuario = session.get('nome_usuario', 'Usuario')    
    return render_template('home.html', nome_usuario=nome_usuario)

@recomendacao_bp.route('/recomendacao/orcamento', methods=['GET','POST'])
def recomendacao_por_orcamento():
    nome_usuario = session.get('nome_usuario', 'Usuario')
    id_usuario = session.get('id_usuario', 'ID_Usuario')

    if request.method == 'POST':
        orcamento = request.form['orcamento']
        mes = request.form['mes']
        # Cria o perfil de viagem para o usuário
        perfil_viagem = PerfilViagem(None,id_usuario,mes,None,orcamento,None)
        perfil_viagem_id = perfil_viagem_dal.criar_perfil(perfil_viagem)
        session['perfil_viagem_id'] = perfil_viagem_id

        # Gera a recomendação com base no perfil de viagem
        recomendacao = Recomendacao(None,id_usuario,perfil_viagem_id,'Orcamento',None)
        recomendacoes_dal.criar_recomendacao(recomendacao,perfil_viagem)

        return redirect(url_for('recomendacao.resultado'))
    else:
        return render_template('recomendacaoOrcamento.html')

@recomendacao_bp.route('/recomendacao/diarias', methods=['GET','POST'])
def recomendacao_por_diarias():
    nome_usuario = session.get('nome_usuario', 'Usuario')
    id_usuario = session.get('id_usuario', 'ID_Usuario')

    if request.method == 'POST':
        diarias = request.form['diarias']
        mes = request.form['mes']
        # Cria o perfil de viagem para o usuário
        perfil_viagem = PerfilViagem(None,id_usuario,mes,diarias,None,None)
        perfil_viagem_id = perfil_viagem_dal.criar_perfil(perfil_viagem)
        session['perfil_viagem_id'] = perfil_viagem_id

        # Gera a recomendação com base no perfil de viagem
        recomendacao = Recomendacao(None,id_usuario,perfil_viagem_id,'Diarias',None)
        recomendacoes_dal.criar_recomendacao(recomendacao,perfil_viagem)

        return redirect(url_for('recomendacao.resultado'))
    else:
        return render_template('recomendacaoDiarias.html')

@recomendacao_bp.route('/recomendacao/clima', methods=['GET','POST'])
def recomendacao_por_clima():
    nome_usuario = session.get('nome_usuario', 'Usuario')
    id_usuario = session.get('id_usuario', 'ID_Usuario')

    if request.method == 'POST':
        clima = request.form['clima']
        mes = request.form['mes']
        # Cria o perfil de viagem para o usuário
        perfil_viagem = PerfilViagem(None,id_usuario,mes,None,None,clima)
        perfil_viagem_id = perfil_viagem_dal.criar_perfil(perfil_viagem)
        session['perfil_viagem_id'] = perfil_viagem_id

        # Gera a recomendação com base no perfil de viagem
        recomendacao = Recomendacao(None,id_usuario,perfil_viagem_id,'Clima',None)
        recomendacoes_dal.criar_recomendacao(recomendacao,perfil_viagem)

        return redirect(url_for('recomendacao.resultado'))
    else:
        return render_template('recomendacaoClima.html')


@recomendacao_bp.route('/recomendacao/resultado', methods=['GET','POST'])
def resultado():
    nome_usuario = session.get('nome_usuario', 'Usuario')
    id_usuario = session.get('id_usuario', 'ID_Usuario')
    perfil_viagem_id = session.get('perfil_viagem_id', 'Perfil Viagem')

    # Obtem as recomendações geradas para o usuário
    recomendacao = recomendacoes_dal.obter_recomendacoes_por_usuario_e_perfil(id_usuario, perfil_viagem_id)
    if len(recomendacao) != 0:
        destinos = destino_dal.obter_destinos_por_recomendacao(recomendacao[0]['id'])
        return render_template('recomendacoes.html', recomendacoes=recomendacao, destinos=destinos, nome_usuario=nome_usuario)
    else:
        mensagem = "Não temos destinos compatíveis com as informações da viagem solicitada."
        return render_template('home.html', nome_usuario=nome_usuario, mensagem=mensagem)
    
@recomendacao_bp.route('/historico', methods=['GET'])
def historico():
    nome_usuario = session.get('nome_usuario', 'Usuário')
    id_usuario = session.get('id_usuario', 'ID_Usuário')

    # Busca todas as recomendações feitas para o usuário
    recomendacoes = recomendacoes_dal.obter_recomendacoes_por_usuario(id_usuario)
    historico = []
    for recomendacao in recomendacoes:
        recomendacao_id = recomendacao['id']
        # Busca os destinos associados a cada recomendação
        destinos = destino_dal.obter_destinos_por_recomendacao(recomendacao_id)
        if len(destinos) != 0:
            historico.append({
                "recomendacao": recomendacao,
                "destinos": destinos
            })
    if len(historico) != 0:
        return render_template('historico.html', historico=historico, nome_usuario=nome_usuario)
    else:
        mensagem = "Você ainda não gerou nenhuma recomendação."
        return render_template('home.html', nome_usuario=nome_usuario, mensagem=mensagem)

