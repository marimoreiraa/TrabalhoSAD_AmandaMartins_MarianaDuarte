CREATE TABLE IF NOT EXISTS guia_mochileiro_pobre.usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS guia_mochileiro_pobre.perfil_viagem (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    mes_viagem ENUM('Janeiro', 'Fevereiro', 'Marco', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro') NOT NULL, 
    orcamento FLOAT,
    diarias INT,
    clima ENUM('Quente', 'Frio','Umido','Seco','Neve'),
    FOREIGN KEY (usuario_id) REFERENCES guia_mochileiro_pobre.usuario(id)
);

CREATE TABLE IF NOT EXISTS guia_mochileiro_pobre.imagem_destino (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imagem_url VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS guia_mochileiro_pobre.destino (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    imagem_id INT,
    mes_viagem ENUM('Janeiro', 'Fevereiro', 'Marco', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro') NOT NULL,
    orcamento FLOAT NOT NULL,
    diarias_ideais INT NOT NULL,
    clima ENUM('Quente', 'Frio','Umido','Seco','Neve') NOT NULL,
    FOREIGN KEY (imagem_id) REFERENCES guia_mochileiro_pobre.imagem_destino(id)

);

CREATE TABLE IF NOT EXISTS guia_mochileiro_pobre.recomendacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    perfil_viagem_id INT NOT NULL,
    data_recomendacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    tipo_recomendacao ENUM('Orcamento', 'Clima', 'Diarias') NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES guia_mochileiro_pobre.usuario(id),
    FOREIGN KEY (perfil_viagem_id) REFERENCES guia_mochileiro_pobre.perfil_viagem(id)
);

CREATE TABLE IF NOT EXISTS guia_mochileiro_pobre.recomendacao_destino (
    recomendacao_id INT NOT NULL,
    destino_id INT NOT NULL,
    PRIMARY KEY (recomendacao_id, destino_id),
    FOREIGN KEY (recomendacao_id) REFERENCES guia_mochileiro_pobre.recomendacao(id),
    FOREIGN KEY (destino_id) REFERENCES guia_mochileiro_pobre.destino(id)
);

