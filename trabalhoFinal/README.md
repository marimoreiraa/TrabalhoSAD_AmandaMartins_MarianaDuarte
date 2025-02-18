# Sistema WEB para Apoio a Diagnósticos Médicos

## Descrição

Este projeto é um sistema web desenvolvido para auxiliar médicos na detecção de doenças com base em sintomas informados pelos pacientes. O sistema utiliza uma Árvore de Decisão implementada pelo algoritmo ID3, permitindo que os médicos façam diagnósticos a partir de uma tabela de sintomas e intensidades.

## Tecnologias Utilizadas

- **Backend**: Python com Flask
- **Frontend**: HTML, CSS
- **Banco de Dados**: MySQL

## Funcionalidades

- **Detecção de Doenças**: O sistema pode identificar pelo menos 12 doenças predefinidas no banco de dados.
- **Tabela de Sintomas**: Contém 24 sintomas diferentes, cada um classificado como "Irrelevante", "Médio" ou "Forte".
- **Interface Gráfica**: O médico pode:
  - Realizar diagnósticos informando a intensidade de cada sintoma que o paciente está sentindo, com o sistema gerando um possível diagnóstico usando o algoritmo ID3.
  - Inserir e excluir sintomas.
  - Inserir e excluir doenças.
  - Vincular doenças a sintomas com suas respectivas intensidades.
  - Excluir dados da tabela de treinamento.

## Estrutura do Projeto

O projeto é composto por três arquivos principais:

1. **`id3.py`**: Implementa a árvore de decisão usando o algoritmo ID3.
   - **Classes e Funções**:
     - A classe `Node` representa um nó da árvore.
     - A função `entropy` calcula a incerteza dos dados.
     - A função `information_gain` mede a eficácia de uma característica em separar os dados.
     - A função `id3` constrói a árvore de decisão com base nos dados de treinamento.
   - **Predição**: A função `predict` utiliza a árvore treinada para prever a doença com base nos sintomas fornecidos.

2. **`app.py`**: O arquivo principal da aplicação Flask, responsável por gerenciar as rotas e a lógica do sistema.
   - **Importações**: Inclui bibliotecas necessárias, como Flask para criar a aplicação web e funções para manipulação do banco de dados e o algoritmo ID3.
   - **Função `initialize_database`**: Inicializa o banco de dados se ele ainda não estiver configurado, criando a estrutura necessária.
   - **Rotas da Aplicação**:
     - `/` (Página Inicial): Renderiza a página inicial do sistema.
     - `/diagnosis` (Página de Diagnóstico): Coleta sintomas do formulário, treina a árvore de decisão usando o ID3 e realiza previsões baseadas nos sintomas informados.
     - `/training-page` e `/training-page/add` (Visualização e Edição da Tabela de Treinamento): Permite ao médico visualizar e editar dados de treinamento, incluindo a adição ou remoção de entradas.
     - `/database` (Página do Banco de Dados): Mostra a lista de sintomas e doenças cadastrados, com a possibilidade de exclusão.
     - `/database/add_symptom` e `/database/add_disease`: Páginas para adicionar novos sintomas e doenças ao banco de dados.
   - **Funções de Predição e Treinamento**: O sistema utiliza as funções `train_id3` e `predict` importadas do arquivo `id3.py` para treinar a árvore de decisão e prever doenças com base nos sintomas informados.

## Uso

1. Antes de executar o `app.py`, ajuste o arquivo `.env` com as credenciais referentes ao banco de dados local.
2. **Inicialização**: Execute o `app.py` para iniciar o servidor Flask. O banco de dados será inicializado automaticamente na primeira execução.
3. **Acesso ao Sistema**: Acesse `http://localhost:5000` no seu navegador.
4. **Interação**: Navegue pelas diferentes páginas para realizar diagnósticos, editar a tabela de treinamento e gerenciar sintomas/doenças.
