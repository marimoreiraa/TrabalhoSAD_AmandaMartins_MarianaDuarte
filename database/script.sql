-- Script de Criação do Banco

create database IF NOT EXISTS guia_mochileiro_pobre;

-- Seleciona o banco de dados para uso
USE guia_mochileiro_pobre;

-- Criação da tabela 'usuarios'
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela 'perfis_viagem'
CREATE TABLE IF NOT EXISTS perfis_viagem (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    mes_viagem ENUM('Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro') NOT NULL,
    numero_pessoas INT NOT NULL,
    orcamento_por_pessoa FLOAT NOT NULL,
    tipo_destino ENUM('Quente', 'Frio') NOT NULL,
    nivel_viagem ENUM('Simples', 'Luxo', 'Super Luxo') NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Criação da tabela 'destinos'
CREATE TABLE IF NOT EXISTS destinos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    imagem_url VARCHAR(255)
);

-- Criação da tabela 'recomendacoes'
CREATE TABLE IF NOT EXISTS recomendacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    perfil_viagem_id INT NOT NULL,
    data_recomendacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (perfil_viagem_id) REFERENCES perfis_viagem(id)
);

-- Tabela de relacionamento entre 'recomendacoes' e 'destinos' (muitos-para-muitos)
CREATE TABLE IF NOT EXISTS recomendacao_destino (
    recomendacao_id INT NOT NULL,
    destino_id INT NOT NULL,
    PRIMARY KEY (recomendacao_id, destino_id),
    FOREIGN KEY (recomendacao_id) REFERENCES recomendacoes(id),
    FOREIGN KEY (destino_id) REFERENCES destinos(id)
);
