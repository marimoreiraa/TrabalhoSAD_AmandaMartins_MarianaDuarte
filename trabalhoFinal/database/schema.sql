CREATE DATABASE IF NOT EXISTS medical_diagnosis;
USE medical_diagnosis;

CREATE TABLE IF NOT EXISTS symptoms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS diseases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS training_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    symptom_id INT,
    disease_id INT,
    intensity ENUM('Irrelevante', 'Médio', 'Forte'),
    FOREIGN KEY (symptom_id) REFERENCES symptoms(id),
    FOREIGN KEY (disease_id) REFERENCES diseases(id)
);

INSERT INTO symptoms (name) VALUES
('Dores de cabeça'),
('Dores no peito'),
('Dores nos olhos'),
('Nariz escorrendo'),
('Dores no estômago'),
('Tosse'),
('Espirros'),
('Dor de garganta'),
('Palpitações'),
('Soluços'),
('Diarreia'),
('Náusea'),
('Dormência'),
('Insônia'),
('Desmaio'),
('Perda de olfato');

-- Inserindo doenças fictícias
INSERT INTO diseases (name) VALUES
('Ansiedade'),
('Cardiopatia'),
('Covid 19'),
('Meningite');

-- Associando sintomas a doenças com diferentes intensidades
INSERT INTO training_data (symptom_id, disease_id, intensity) VALUES
-- Ansiedade
(1, 1, 'Forte'),  -- Dores de cabeça
(2, 1, 'Médio'),  -- Dores no peito
(3, 1, 'Irrelevante'),  -- Dores nos olhos
(4, 1, 'Médio'),  -- Nariz escorrendo
(5, 1, 'Forte'),  -- Dores no estômago
(6, 1, 'Médio'),  -- Tosse
(7, 1, 'Irrelevante'),  -- Espirros
(8, 1, 'Médio'),  -- Dor de garganta

-- Cardiopatia 
(1, 2, 'Médio'),
(2, 2, 'Forte'),
(3, 2, 'Médio'),
(4, 2, 'Irrelevante'),
(5, 2, 'Forte'),
(6, 2, 'Forte'),
(7, 2, 'Médio'),
(8, 2, 'Irrelevante'),

-- Covid 19
(1, 3, 'Irrelevante'),
(2, 3, 'Médio'),
(3, 3, 'Forte'),
(4, 3, 'Médio'),
(5, 3, 'Irrelevante'),
(6, 3, 'Médio'),
(7, 3, 'Forte'),
(8, 3, 'Forte'),

-- Meningite
(1, 4, 'Forte'),
(2, 4, 'Irrelevante'),
(3, 4, 'Médio'),
(4, 4, 'Forte'),
(5, 4, 'Médio'),
(6, 4, 'Irrelevante'),
(7, 4, 'Forte'),
(8, 4, 'Médio');

-- Adicionando mais sintomas comuns
INSERT INTO symptoms (name) VALUES
('Febre'),
('Fadiga'),
('Dor muscular'),
('Congestão nasal'),
('Falta de ar'),
('Suor excessivo'),
('Tontura'),
('Calafrios');

-- Adicionando mais doenças comuns
INSERT INTO diseases (name) VALUES
('Resfriado Comum'),
('Gripe'),
('Bronquite'),
('Sinusite'),
('Dengue'),
('Pneumonia'),
('Hipertensão'),
('Diabetes');

-- Associando sintomas a novas doenças
INSERT INTO training_data (symptom_id, disease_id, intensity) VALUES
-- Resfriado Comum
(4, 5, 'Forte'),  -- Nariz escorrendo
(6, 5, 'Médio'),  -- Tosse
(7, 5, 'Forte'),  -- Espirros
(8, 5, 'Médio'),  -- Dor de garganta
(17, 5, 'Médio'), -- Congestão nasal

-- Gripe
(1, 6, 'Forte'),  -- Dores de cabeça
(6, 6, 'Forte'),  -- Tosse
(7, 6, 'Médio'),  -- Espirros
(8, 6, 'Forte'),  -- Dor de garganta
(9, 6, 'Médio'),  -- Febre
(10, 6, 'Médio'), -- Fadiga

-- Bronquite
(6, 7, 'Forte'),  -- Tosse
(9, 7, 'Médio'),  -- Febre
(11, 7, 'Médio'), -- Falta de ar

-- Sinusite
(4, 8, 'Forte'),  -- Nariz escorrendo
(6, 8, 'Médio'),  -- Tosse
(17, 8, 'Forte'), -- Congestão nasal
(1, 8, 'Médio'),  -- Dor de cabeça

-- Dengue
(1, 9, 'Forte'),  -- Dores de cabeça
(5, 9, 'Forte'),  -- Dores no estômago
(9, 9, 'Forte'),  -- Febre
(12, 9, 'Forte'), -- Dor muscular
(18, 9, 'Forte'), -- Calafrios

-- Pneumonia
(6, 10, 'Forte'), -- Tosse
(9, 10, 'Forte'), -- Febre
(11, 10, 'Forte'), -- Falta de ar
(12, 10, 'Médio'), -- Dor muscular

-- Hipertensão
(2, 11, 'Forte'), -- Dores no peito
(3, 11, 'Médio'), -- Dores nos olhos
(13, 11, 'Médio'), -- Tontura
(15, 11, 'Médio'), -- Suor excessivo

-- Diabetes
(5, 12, 'Médio'), -- Dores no estômago
(14, 12, 'Médio'), -- Insônia
(16, 12, 'Forte'), -- Perda de olfato
(10, 12, 'Médio'); -- Fadiga
