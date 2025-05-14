/*  Criação do Banco de Dados */
CREATE DATABASE db_generation_game_online;

/*  Seleciona o Banco de Dados */
USE db_generation_game_online;

/* Criação da Tabela tb_classes */
CREATE TABLE tb_classes (
    id_classe INT PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    descricao_classe VARCHAR(255)
);