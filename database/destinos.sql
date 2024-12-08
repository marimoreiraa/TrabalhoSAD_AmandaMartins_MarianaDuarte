INSERT INTO guia_mochileiro_pobre.imagem_destino (imagem_url)
VALUES
('https://jpimg.com.br/uploads/2023/05/turismo-no-rio-de-janeiro-veja-o-que-visitar-na-cidade-maravilhosa-1024x683.jpg'),
('https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-gramado-capa2019-04-820x430.jpg'),
('https://capital.sp.gov.br/documents/34276/0/WhatsApp+Image+2024-12-04+at+14.57.55.jpeg/8eb996bd-0059-f29a-7e9f-e7e0bfaa64c5?t=1733335410661'),
('https://imgmd.net/images/v1/guia/1685947/lagoa-da-pampulha.jpg'),
('https://media.staticontent.com/media/pictures/04641818-297a-4f28-b635-b15e2fb31087'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF7uCWUvCGOR-FWs8HO0ikyL4kejbMReCXfg&s'),
('https://www.viagensecaminhos.com/wp-content/uploads/2023/12/praia-de-atalaia-aracaju.jpg'),
('https://imgmd.net/images/v1/guia/1704987/porto-seguro.jpg'),
('https://media.staticontent.com/media/pictures/39a5692d-b61e-44eb-95ad-d02d5d06d4d6'),
('https://aruba.bynder.com/m/29d4ae5a6d524f1e/fullscreen_letterbox-Aerial-view-of-the-ocean.jpg'),
('https://imgmd.net/images/v1/guia/1700390/o-que-fazer-em-punta-cana.jpg'),
('https://uploads.grupodicas.com/2023/11/bathsheba.jpg'),
('https://media.staticontent.com/media/pictures/2380f5a2-aa34-4205-870a-491b95f3cb8b'),
('https://escapemagazine.com.br/wp-content/uploads/2023/08/winter-night-esqui-em-bariloche.jpg'),
('https://www.brasileirosemushuaia.com.br/wp-content/uploads/2019/12/laguna.jpg'),
('https://oficinadeinverno.com.br/cdn/shop/articles/eiffel-tower-sunrise1.jpg?v=1659494576'),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXNxGUkqhiZQyOaql56ws0zaCAZ-9vj7ymmg&s'),
('https://s5.static.brasilescola.uol.com.br/be/2023/11/nascer-do-sol-nas-proximidades-do-coliseu-um-dos-principais-simbolos-historicos-e-culturais-de-roma-capital-da-italia.jpg'),
('https://static.mundoeducacao.uol.com.br/mundoeducacao/2021/11/big-ben.jpg'),
('https://wp.rotadeferias.com.br/wp-content/uploads/2020/11/Akihabara.jpg.webp'),
('https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/New_york_times_square-terabass.jpg/800px-New_york_times_square-terabass.jpg'),
('https://static.nationalgeographicbrasil.com/files/styles/image_3200/public/aerial-beach-miami-florida.jpg?w=1900&h=1267')
('https://imgmd.net/images/c_limit%2Cw_1600/v1/guia/1684169/valle-nevado-188-c.jpg'),
('https://machupicchubrasil.com.br/blog/wp-content/uploads/2022/07/huaraz1.png'),
('https://yazigitravel.com.br/wp-content/uploads/2020/06/Viagem-para-Seul-Coreia-do-Sul-Mathew-Schwartz-1.jpg');


-- Rio de Janeiro
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Janeiro', 3000.00, 'Quente', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Fevereiro', 2800.00, 'Quente', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Marco', 2500.00, 'Quente', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Abril', 2200.00, 'Umido', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Maio', 2100.00, 'Umido', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Junho', 2300.00, 'Umido', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Julho', 2500.00, 'Umido', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Agosto', 2400.00, 'Umido', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Setembro', 2300.00, 'Quente', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Outubro', 2500.00, 'Quente', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Novembro', 2200.00, 'Quente', 'Brasil', 'RJ', 1,5),
    ('Rio de Janeiro', 'Cidade famosa pelas suas praias e o Pão de Açúcar.', 'Dezembro', 2800.00, 'Quente', 'Brasil', 'RJ', 1,5);

-- Gramado
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Janeiro', 3500.00, 'Frio', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Fevereiro', 3300.00, 'Frio', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Marco', 3000.00, 'Frio', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Abril', 2800.00, 'Frio', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Maio', 2700.00, 'Frio', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Junho', 3200.00, 'Neve', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Julho', 3300.00, 'Neve', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Agosto', 3100.00, 'Neve', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Setembro', 2900.00, 'Frio', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Outubro', 3000.00, 'Frio', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Novembro', 2700.00, 'Frio', 'Brasil', 'RS', 2,4),
    ('Gramado', 'Cidade turística famosa pelo clima frio e arquitetura charmosa.', 'Dezembro', 3500.00, 'Frio', 'Brasil', 'RS', 2,4);

-- São Paulo
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Janeiro', 2500.00, 'Quente', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Fevereiro', 2300.00, 'Quente', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Marco', 2200.00, 'Quente', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Abril', 2000.00, 'Umido', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Maio', 2100.00, 'Umido', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Junho', 2200.00, 'Frio', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Julho', 2300.00, 'Frio', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Agosto', 2200.00, 'Frio', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Setembro', 2300.00, 'Quente', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Outubro', 2400.00, 'Quente', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Novembro', 2100.00, 'Quente', 'Brasil', 'SP', 3,4),
    ('São Paulo', 'A maior cidade do Brasil, com grande oferta cultural.', 'Dezembro', 2500.00, 'Quente', 'Brasil', 'SP', 3,4);

-- Belo Horizonte
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Janeiro', 2000.00, 'Quente', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Fevereiro', 1800.00, 'Quente', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Marco', 1700.00, 'Quente', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Abril', 1500.00, 'Umido', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Maio', 1600.00, 'Umido', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Junho', 1700.00, 'Frio', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Julho', 1800.00, 'Frio', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Agosto', 1900.00, 'Frio', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Setembro', 1700.00, 'Quente', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Outubro', 1800.00, 'Quente', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Novembro', 1500.00, 'Quente', 'Brasil', 'MG', 4,3),
    ('Belo Horizonte', 'Capital de Minas Gerais, conhecida pela culinária e vida noturna vibrante.', 'Dezembro', 2000.00, 'Quente', 'Brasil', 'MG', 4,3);

-- Curitiba
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Janeiro', 2200.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Fevereiro', 2000.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Marco', 1900.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Abril', 1700.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Maio', 1800.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Junho', 1900.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Julho', 2000.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Agosto', 2100.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Setembro', 1900.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Outubro', 2000.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Novembro', 1700.00, 'Frio', 'Brasil', 'PR', 5,3),
    ('Curitiba', 'Capital do Paraná, famosa pelos parques e pela arquitetura moderna.', 'Dezembro', 2200.00, 'Frio', 'Brasil', 'PR', 5,3);

-- Natal
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Janeiro', 2500.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Fevereiro', 2300.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Marco', 2200.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Abril', 2000.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Maio', 2100.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Junho', 2200.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Julho', 2300.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Agosto', 2400.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Setembro', 2200.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Outubro', 2300.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Novembro', 2000.00, 'Quente', 'Brasil', 'RN', 6,4),
    ('Natal', 'Capital do Rio Grande do Norte, famosa pelas praias paradisíacas e pelo clima quente.', 'Dezembro', 2500.00, 'Quente', 'Brasil', 'RN', 6,4);

-- Aracaju
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Janeiro', 2400.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Fevereiro', 2200.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Marco', 2100.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Abril', 1900.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Maio', 2000.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Junho', 2100.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Julho', 2200.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Agosto', 2300.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Setembro', 2100.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Outubro', 2200.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Novembro', 1900.00, 'Quente', 'Brasil', 'SE', 7,4),
    ('Aracaju', 'Capital de Sergipe, conhecida pelas praias tranquilas e pelo clima quente.', 'Dezembro', 2400.00, 'Quente', 'Brasil', 'SE', 7,4);

-- Porto Seguro
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Janeiro', 2600.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Fevereiro', 2400.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Marco', 2300.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Abril', 2100.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Maio', 2200.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Junho', 2300.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Julho', 2400.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Agosto', 2500.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Setembro', 2300.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Outubro', 2400.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Novembro', 2100.00, 'Quente', 'Brasil', 'BA', 8,5),
    ('Porto Seguro', 'Famoso destino turístico na Bahia, com praias lindas e muita história.', 'Dezembro', 2600.00, 'Quente', 'Brasil', 'BA', 8,5);

-- Cancún
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem,  orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Janeiro', 8000.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Fevereiro', 8500.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Marco', 7100.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Abril', 6900.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Maio', 5900.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Junho', 5800.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Julho', 5700.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Agosto', 5500.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Setembro', 6200.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Outubro', 6500.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Novembro', 7000.00, 'Quente','México','Quintana Roo', 9,5),
    ('Cancún', 'É um dos destinos mais populares do Caribe, conhecido por suas praias exuberantes, vida noturna agitada e resorts all inclusive.', 'Dezembro', 7500.00, 'Quente','México','Quintana Roo', 9,5);

-- Aruba
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem,  orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Janeiro', 10000.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Fevereiro', 10400.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Marco', 10100.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Abril', 9930.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Maio', 9900.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Junho', 10800.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Julho', 11700.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Agosto', 8500.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Setembro', 8200.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Outubro', 7500.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Novembro', 9200.00, 'Quente','Aruba','Caribe', 10,6),
    ('Aruba', 'É famosa por suas praias de areia branca, águas cristalinas e clima quente e seco.', 'Dezembro', 10500.00, 'Quente','Aruba','Caribe', 10,6);

-- Punta Cana
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem,  orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Janeiro', 8000.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Fevereiro', 7940.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Marco', 8100.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Abril', 8030.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Maio', 6900.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Junho', 7500.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Julho', 7700.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Agosto', 6500.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Setembro', 6200.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Outubro', 6100.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Novembro', 7200.00, 'Quente','República Dominicana','La Altagracia', 11,7),
    ('Punta Cana', 'É famosa por suas praias paradisíacas, resorts all inclusive de luxo e campos de golfe.', 'Dezembro', 7900.00, 'Quente','República Dominicana','La Altagracia', 11,7);

-- Barbados
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Janeiro', 10000.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Fevereiro', 10400.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Marco', 10100.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Abril', 9930.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Maio', 9900.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Junho', 10800.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Julho', 11700.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Agosto', 8500.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Setembro', 8200.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Outubro', 7500.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Novembro', 9200.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5),
    ('Barbados', 'Possui uma rica cultura e história, praias, golfe, cricket e trilhas.', 'Dezembro', 10500.00, 'Quente', 'Barbados', 'Pequenas Antilhas', 12,5);
   
-- San Andrés
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Janeiro', 6000.00, 'Quente', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Fevereiro', 6400.00, 'Quente', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Marco', 6100.00, 'Quente', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Abril', 6050.00, 'Quente', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Maio', 5000.00, 'Umido', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Junho', 5900.00, 'Umido', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Julho', 5950.00, 'Umido', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Agosto', 4500.00, 'Umido', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Setembro', 4700.00, 'Umido', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Outubro', 5300.00, 'Umido', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Novembro', 5700.00, 'Umido', 'San Andrés', 'Colômbia', 13,5),
    ('San Andrés', 'É conhecido por suas praias exuberantes, recifes de coral e atmosfera relaxada.', 'Dezembro', 5800.00, 'Umido', 'San Andrés', 'Colômbia', 13,5);

-- Bariloche
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Janeiro', 5000.00, 'Frio', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Fevereiro', 5400.00, 'Frio', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Marco', 6100.00, 'Frio', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Abril', 6050.00, 'Frio', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Maio', 7000.00, 'Neve', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Junho', 7900.00, 'Neve', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Julho', 9950.00, 'Neve', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Agosto', 9500.00, 'Neve', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Setembro', 7700.00, 'Neve', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Outubro', 6300.00, 'Neve', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Novembro', 5700.00, 'Neve', 'Argentina', 'Rio Negro', 14 ,5),
    ('Bariloche', 'É conhecida como a "Suíça Argentina". Bariloche é um dos destinos mais populares para quem busca neve na América do Sul.', 'Dezembro', 5900.00, 'Neve', 'Argentina', 'Rio Negro', 14 ,5);

-- Ushuaia
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Janeiro', 7000.00, 'Frio', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Fevereiro', 7400.00, 'Frio', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Marco', 7100.00, 'Frio', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Abril', 7250.00, 'Frio', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Maio', 7200.00, 'Neve', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Junho', 8900.00, 'Neve', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Julho', 9950.00, 'Neve', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Agosto', 11000.00, 'Neve', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Setembro', 10700.00, 'Neve', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Outubro', 8300.00, 'Neve', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Novembro', 8700.00, 'Neve', 'Argentina', 'Tierra del Fuego', 15 , 5),
    ('Ushuaia', 'É a cidade mais austral do mundo, apresentando paisagens incríveis. No inverno, a região é coberta de neve, proporcionando um cenário mágico.', 'Dezembro', 7900.00, 'Neve', 'Argentina', 'Tierra del Fuego', 15 , 5);

-- Paris
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Janeiro', 7000.00, 'Frio', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Fevereiro', 7200.00, 'Frio', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Marco', 7500.00, 'Frio', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Abril', 7800.00, 'Umido', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Maio', 8000.00, 'Umido', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Junho', 8200.00, 'Umido', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Julho', 9000.00, 'Quente', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Agosto', 8800.00, 'Quente', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Setembro', 8700.00, 'Quente', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Outubro', 8200.00, 'Frio', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Novembro', 7500.00, 'Frio', 'França', 'Île-de-France', 16 , 5),
    ('Paris', 'A cidade luz é famosa por sua cultura, gastronomia, história e arquitetura. A Torre Eiffel é um dos principais pontos turísticos.', 'Dezembro', 7000.00, 'Frio', 'França', 'Île-de-France', 16 , 5);

-- Buenos Aires
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Janeiro', 5000.00, 'Quente', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Fevereiro', 5300.00, 'Quente', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Marco', 5500.00, 'Quente', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Abril', 5700.00, 'Umido', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Maio', 5800.00, 'Umido', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Junho', 6000.00, 'Frio', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Julho', 6200.00, 'Frio', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Agosto', 6300.00, 'Frio', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Setembro', 6000.00, 'Frio', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Outubro', 5700.00, 'Frio', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Novembro', 5400.00, 'Quente', 'Argentina', 'Buenos Aires', 17 , 4),
    ('Buenos Aires', 'A capital da Argentina é conhecida pela sua arquitetura de influência europeia, tango e excelente gastronomia.', 'Dezembro', 5100.00, 'Quente', 'Argentina', 'Buenos Aires', 17 , 4);

-- Roma
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Janeiro', 7000.00, 'Frio', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Fevereiro', 7200.00, 'Frio', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Marco', 7500.00, 'Frio', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Abril', 8000.00, 'Umido', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Maio', 8500.00, 'Umido', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Junho', 9000.00, 'Quente', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Julho', 9500.00, 'Quente', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Agosto', 9300.00, 'Quente', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Setembro', 8500.00, 'Quente', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Outubro', 8000.00, 'Frio', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Novembro', 7500.00, 'Frio', 'Itália', 'Lazio', 18 , 6),
    ('Roma', 'A capital italiana é famosa pela sua história, arte e gastronomia, sendo um dos principais destinos turísticos do mundo.', 'Dezembro', 7000.00, 'Frio', 'Itália', 'Lazio', 18 , 6);

-- Londres
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Janeiro', 7500.00, 'Frio', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Fevereiro', 7700.00, 'Frio', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Marco', 8000.00, 'Frio', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Abril', 8200.00, 'Umido', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Maio', 8500.00, 'Umido', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Junho', 8800.00, 'Umido', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Julho', 9200.00, 'Quente', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Agosto', 9000.00, 'Quente', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Setembro', 8800.00, 'Umido', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Outubro', 8500.00, 'Frio', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Novembro', 8000.00, 'Frio', 'Reino Unido', 'Inglaterra', 19, 5),
    ('Londres', 'A capital britânica é famosa pela sua história, cultura, museus e pela Torre de Londres. O clima é geralmente temperado e Umido.', 'Dezembro', 7700.00, 'Frio', 'Reino Unido', 'Inglaterra', 19, 5);

-- Tóquio
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Janeiro', 8000.00, 'Frio', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Fevereiro', 8300.00, 'Frio', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Marco', 8600.00, 'Frio', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Abril', 9000.00, 'Umido', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Maio', 9300.00, 'Umido', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Junho', 9500.00, 'Umido', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Julho', 9800.00, 'Quente', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Agosto', 9700.00, 'Quente', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Setembro', 9400.00, 'Umido', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Outubro', 9100.00, 'Frio', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Novembro', 8800.00, 'Frio', 'Japão', 'Tóquio', 20, 6),
    ('Tóquio', 'Tóquio é uma das cidades mais vibrantes do mundo, com cultura única, excelente gastronomia e tecnologia de ponta.', 'Dezembro', 8500.00, 'Frio', 'Japão', 'Tóquio',20, 6);

-- Nova York
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Janeiro', 8500.00, 'Frio', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Fevereiro', 8700.00, 'Frio', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Marco', 9000.00, 'Frio', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Abril', 9500.00, 'Umido', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Maio', 10000.00, 'Umido', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Junho', 10500.00, 'Umido', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Julho', 11000.00, 'Quente', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Agosto', 10800.00, 'Quente', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Setembro', 10500.00, 'Umido', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Outubro', 9500.00, 'Frio', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Novembro', 9000.00, 'Frio', 'Estados Unidos', 'Nova York', 21, 6),
    ('Nova York', 'Nova York é conhecida por sua cultura vibrante, monumentos icônicos como a Estátua da Liberdade e a Times Square.', 'Dezembro', 8600.00, 'Frio', 'Estados Unidos', 'Nova York', 21, 6);

-- Miami
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
VALUES
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Janeiro', 6000.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Fevereiro', 6200.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Marco', 6500.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Abril', 6800.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Maio', 7000.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Junho', 7200.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Julho', 7400.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Agosto', 7300.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Setembro', 7100.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Outubro', 6800.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Novembro', 6500.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5),
    ('Miami', 'Miami é famosa por suas praias tropicais, vida noturna animada e cultura latina vibrante.', 'Dezembro', 6200.00, 'Quente', 'Estados Unidos', 'Flórida', 22, 5);

-- Valle Nevado
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, clima, pais, estado, imagem_id, diarias_ideais)
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Janeiro',  9000.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Fevereiro',  9400.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Marco',  9100.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Abril',  9250.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Maio',  12200.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Junho',  15000.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Julho',  14450.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Agosto',  13900.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Setembro',  10700.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Outubro',  10300.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Novembro',  11700.00, 'Frio','Chile', ' Lo Barnechea', 23,6),
    ('Valle Nevado', 'É um dos maiores centros de ski da América do Sul, com pistas para todos os níveis, hotéis de luxo e diversas opções de entretenimento.', 'Dezembro',  12900.00, 'Frio','Chile', ' Lo Barnechea', 23,6);

-- Huaraz
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Janeiro',  3000.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Fevereiro',  3400.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Marco',  4100.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Abril',  4250.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Maio',  4200.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Junho',  5000.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Julho',  5550.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Agosto',  5250.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Setembro',  3700.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Outubro',  3300.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Novembro',  2700.00, 'Frio','Peru', ' Ancash', 24,6),
    ('Huaraz', 'É um destino para aventureiros que buscam trilhas, montanhismo e paisagens andinas. No inverno, algumas regiões recebem neve.', 'Dezembro',  2900.00, 'Frio','Peru', ' Ancash', 24,6);

--Seul
INSERT INTO guia_mochileiro_pobre.destino (nome, descricao, mes_viagem, orcamento, tipo_destino, pais, estado, imagem_id)
VALUES
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Janeiro',  7000.00, 'Frio','Coréia do Sul', 'Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Fevereiro',  7400.00, 'Frio','Coréia do Sul', 'Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Marco',  6100.00, 'Frio','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Abril',  6250.00, 'Quente','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Maio',  625,50.00, 'Quente','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Junho',  5000.00, 'Quente','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Julho',  5550.00, 'Quente','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Agosto',  7250.00, 'Quente','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Setembro',  6700.00, 'Quente','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Outubro',  6300.00, 'Frio','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Novembro',  6500.00, 'Frio','Coréia do Sul', ' Sudogwon', 25,5),
    ('Seul', 'Uma cidade moderna e cosmopolita com uma rica história.', 'Dezembro',  5800.00, 'Frio','Coréia do Sul', ' Sudogwon', 25,5);