import numpy as np
from collections import Counter

class Node:
    def __init__(self, feature=None, value=None, children=None, label=None):
        self.feature = feature
        self.value = value
        self.children = children if children else {}
        self.label = label

def entropy(y):
    values, counts = np.unique(y, return_counts=True)
    probabilities = counts / len(y)
    return -np.sum([p * np.log2(p) for p in probabilities if p > 0])

def information_gain(X, y, feature):
    base_entropy = entropy(y)
    values, counts = np.unique(X[:, feature], return_counts=True)
    weighted_entropy = sum(
        (counts[i] / np.sum(counts)) * entropy(y[X[:, feature] == v])
        for i, v in enumerate(values)
    )
    return base_entropy - weighted_entropy

def best_feature_to_split(X, y):
    gains = [information_gain(X, y, feature) for feature in range(X.shape[1])]
    return np.argmax(gains)

def id3(X, y, features):
    if len(set(y)) == 1:
        return Node(label=y[0])
    if len(features) == 0:
        return Node(label=Counter(y).most_common(1)[0][0])

    best_feature = best_feature_to_split(X, y)
    node = Node(feature=features[best_feature])
    unique_values = np.unique(X[:, best_feature])

    for value in unique_values:
        subset_indices = X[:, best_feature] == value
        X_subset, y_subset = X[subset_indices], y[subset_indices]
        node.children[value] = id3(X_subset, y_subset, np.delete(features, best_feature))
    return node

def transform_training_data(training_data):
    """
    Transforma os dados de treinamento para que cada linha represente uma doença
    e cada coluna seja um sintoma específico com sua intensidade.
    """
    disease_dict = {}

    for entry in training_data:
        disease = entry["disease"]
        symptom = entry["symptom"]
        intensity = entry["intensity"]

        if disease not in disease_dict:
            disease_dict[disease] = {}

        disease_dict[disease][symptom] = intensity

    # Transformando em formato de tabela
    diseases = []
    symptoms = list(set([entry["symptom"] for entry in training_data]))
    X = []
    y = []

    for disease, symptom_data in disease_dict.items():
        row = [symptom_data.get(symptom, "Irrelevante") for symptom in symptoms]
        X.append(row)
        y.append(disease)
    
    return np.array(X), np.array(y), symptoms

def train_id3(training_data):
    print("🚀 Transformando dados de treinamento...")
    X, y, symptom_columns = transform_training_data(training_data)
    print("📊 Novo formato de X:", X)
    print("🦠 Novo formato de y:", y)
    
    return id3(X, y, np.array(symptom_columns))


def predict(tree, symptoms):
    print("🔍 Sintomas recebidos para diagnóstico:", symptoms)  
    disease_scores = {}  # Dicionário para armazenar o grau de compatibilidade das doenças

    def traverse(node, score=0):
        """ Percorre a árvore e calcula a compatibilidade de cada doença """
        if node.label:  
            if node.label not in disease_scores:
                disease_scores[node.label] = 0
            disease_scores[node.label] += score  
        
        if not node.children:  # Se não tiver filhos, retorna
            return

        value = symptoms.get(node.feature, "Irrelevante")  
        print(f"🌳 Verificando nó: {node.feature}, valor informado: {value}")  

        if value in node.children:
            traverse(node.children[value], score + 1)  

        # Continua percorrendo os outros ramos da árvore para verificar todas as possibilidades
        for child in node.children.values():
            traverse(child, score)

    # Inicia a busca na árvore
    traverse(tree)

    # Ordena as doenças por compatibilidade (maior pontuação primeiro)
    sorted_diseases = sorted(
        [(disease, score) for disease, score in disease_scores.items() if score > 0],  
        key=lambda x: x[1], reverse=True
    )
    final_results = []

    for disease, score in sorted_diseases:
        if score > 4:
            classification = "Alta"
        elif 2 <= score <= 4:
            classification = "Média"
        else:
            classification = "Baixa"

        final_results.append((disease, classification))

    print(f"🏥 Diagnósticos possíveis (ordenados por compatibilidade): {final_results}")

    return final_results if final_results else [("Desconhecido", "Baixa")]

