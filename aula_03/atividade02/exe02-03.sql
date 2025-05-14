/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* Criação da Tabela tb_pizzas */
CREATE TABLE tb_pizzas (
    id_pizza INT PRIMARY KEY AUTO_INCREMENT,
    nome_pizza VARCHAR(50) NOT NULL,
    preco DECIMAL(5, 2) NOT NULL,
    ingredientes TEXT,
    tamanho VARCHAR(20) NOT NULL,
    fk_categoria INT,
    FOREIGN KEY (fk_categoria) REFERENCES tb_categorias(id_categoria)
);
