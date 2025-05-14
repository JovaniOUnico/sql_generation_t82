/* Criação do Banco de Dados */
CREATE DATABASE db_pizzaria_legal;

/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* Criação da Tabela tb_categorias */
CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255)
);