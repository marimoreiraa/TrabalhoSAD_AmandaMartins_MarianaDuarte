-- Script de Criação do Banco

create database IF NOT EXISTS mochileiropobre
default character set utf8
default collate utf8_general_ci;
use mochileiropobre;

create table usuario(
id INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
senha VARCHAR(255) NOT NULL,
 PRIMARY KEY (id));
 
 
create table tipoacom(
id_tipo_acom INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
classe_acom VARCHAR(255) NOT NULL,
 PRIMARY KEY (id_tipo_acom));

create table destino(
id_dest INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
nome_de VARCHAR(255) NOT NULL,
tipo_de VARCHAR(255) NOT NULL,
cidade VARCHAR(255) NOT NULL,
estado VARCHAR(255) NOT NULL,
pais VARCHAR(255) NOT NULL,
 PRIMARY KEY (id_dest));
 
 create table dataviagem(
id_data INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
datamin DATE NOT NULL,
datamax DATE NOT NULL,
 PRIMARY KEY (id_data));
 
create table orcamento(
id_orcam INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
qtde_pessoa INTEGER NOT NULL,
valormax INTEGER NOT NULL,
tipo_dest_orc VARCHAR(255),
 PRIMARY KEY (id_orcam));
 
create table imagem(
id_img INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
conteudo VARCHAR(255),
 PRIMARY KEY (id_img));
 
create table recomendacao(
id_recom INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
PRIMARY KEY (id_recom));

create table favorito(
id_fav INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
PRIMARY KEY (id_fav));

create table listafavorito(
id_lista_fav INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
PRIMARY KEY (id_lista_fav));
 
alter table acomodacao
ADD COLUMN fk_id_tipo_acom INTEGER;
alter table acomodacao
ADD FOREIGN KEY(fk_id_tipo_acom)
REFERENCES tipoacom (id_tipo_acom);

alter table acomodacao
ADD COLUMN fk_id_dest INTEGER;
alter table acomodacao
ADD FOREIGN KEY(fk_id_dest)
REFERENCES destino (id_dest);

alter table tipoacom
ADD COLUMN fk_id_acom INTEGER;
alter table tipoacom
ADD FOREIGN KEY(fk_id_acom)
REFERENCES acomodacao (id_acom);

alter table destino
ADD COLUMN fk_id_nivel INTEGER;
alter table destino
ADD FOREIGN KEY(fk_id_nivel)
REFERENCES nivel (id_nivel);

alter table destino
ADD COLUMN fk_id_acom INTEGER;
alter table destino
ADD FOREIGN KEY(fk_id_acom)
REFERENCES acomodacao (id_acom);

alter table dataviagem
ADD COLUMN fk_id_usuario INTEGER;
alter table dataviagem
ADD FOREIGN KEY(fk_id_usuario)
REFERENCES usuario (id_usuario);

alter table orcamento
ADD COLUMN fk_id_usuario INTEGER;
alter table orcamento
ADD FOREIGN KEY(fk_id_usuario)
REFERENCES usuario (id_usuario);

alter table imagem
ADD COLUMN fk_id_dest INTEGER;
alter table imagem
ADD FOREIGN KEY(fk_id_dest)
REFERENCES destino (id_dest);

alter table recomendacao
ADD COLUMN fk_id_dest INTEGER;
alter table recomendacao
ADD FOREIGN KEY(fk_id_dest)
REFERENCES destino (id_dest);

alter table recomendacao
ADD COLUMN fk_id_usuario INTEGER;
alter table recomendacao
ADD FOREIGN KEY(fk_id_usuario)
REFERENCES usuario (id_usuario);

alter table recomendacao
ADD COLUMN fk_id_img INTEGER;
alter table recomendacao
ADD FOREIGN KEY(fk_id_img)
REFERENCES imagem (id_img);

alter table recomendacao
ADD COLUMN fk_id_orcam INTEGER;
alter table recomendacao
ADD FOREIGN KEY(fk_id_orcam)
REFERENCES orcamento (id_orcam);

alter table favorito
ADD COLUMN fk_id_usuario INTEGER;
alter table favorito
ADD FOREIGN KEY(fk_id_usuario)
REFERENCES usuario (id_usuario);

alter table listafavorito
ADD COLUMN fk_id_recom INTEGER;
alter table listafavorito
ADD FOREIGN KEY(fk_id_recom)
REFERENCES recomendacao (id_recom);

alter table listafavorito
ADD COLUMN fk_id_dest INTEGER;
alter table listafavorito
ADD FOREIGN KEY(fk_id_dest)
REFERENCES destino (id_dest);

alter table listafavorito
ADD COLUMN fk_id_orcam INTEGER;
alter table listafavorito
ADD FOREIGN KEY(fk_id_orcam)
REFERENCES orcamento (id_orcam);

alter table listafavorito
ADD COLUMN fk_id_usuario INTEGER;
alter table listafavorito
ADD FOREIGN KEY(fk_id_usuario)
REFERENCES usuario (id_usuario);

alter table orcamento
ADD COLUMN fk_id_nivel INTEGER;
alter table orcamento
ADD FOREIGN KEY(fk_id_nivel)
REFERENCES nivel (id_nivel);




