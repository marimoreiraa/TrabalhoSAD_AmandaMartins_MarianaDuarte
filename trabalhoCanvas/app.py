from flask import Flask, jsonify, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/process', methods=['GET'])
def process_file():
    # Caminho do arquivo fixo nomes.txt
    file_path = './nomes.txt'
    
    try:
        connections = {}
        with open(file_path, 'r', encoding='utf-8') as file:
            for line in file:
                line = line.strip()
                if not line or '-' not in line:  # Ignora linhas em branco ou sem o separador
                    continue

                try:
                    person1, person2 = line.split(' - ', 1)  # Divide a linha em duas partes
                    # Adiciona as conexões ao dicionário
                    connections.setdefault(person1, []).append(person2)
                    connections.setdefault(person2, []).append(person1)
                except ValueError:
                    # Log de erro ou tratamento de linhas inválidas, se necessário
                    continue

        # Calcula o grau de cada pessoa
        degrees = {person: len(connections[person]) for person in connections}
        return jsonify({'connections': connections, 'degrees': degrees})
    except FileNotFoundError:
        return jsonify({'error': f'O arquivo {file_path} não foi encontrado.'}), 404
    except Exception as e:
        return jsonify({'error': str(e)}), 500


if __name__ == '__main__':
    app.run(debug=True)
