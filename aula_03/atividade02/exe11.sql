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

/* Inserção de dados na tabela tb_categorias */
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Salgada', 'Pizzas com sabores tradicionais e ingredientes salgados.'),
('Doce', 'Pizzas com sabores doces, ideais para sobremesa.'),
('Vegetariana', 'Pizzas com ingredientes exclusivamente vegetais.'),
('Especial', 'Pizzas com combinações de ingredientes diferenciadas e premium.'),
('Vegana', 'Pizzas sem nenhum ingrediente de origem animal.');

/* Inserção de dados na tabela tb_pizzas */
INSERT INTO tb_pizzas (nome_pizza, preco, ingredientes, tamanho, fk_categoria) VALUES
('Mussarela', 42.50, 'Mussarela, tomate, orégano', 'Média', 1),
('Calabresa', 48.00, 'Calabresa, cebola, azeitona', 'Grande', 1),
('Chocolate com Morango', 55.00, 'Chocolate, morango, leite condensado', 'Média', 2),
('Marguerita', 45.00, 'Mussarela, tomate cereja, manjericão', 'Média', 3),
('Portuguesa', 52.00, 'Mussarela, presunto, ovo, cebola, azeitona', 'Grande', 1),
('Romeu e Julieta', 50.00, 'Goiabada, queijo minas', 'Pequena', 2),
('Palmito Pupunha', 58.00, 'Palmito pupunha, champignon, azeitona, tomate seco', 'Grande', 3),
('Frango com Catupiry', 56.00, 'Frango desfiado, catupiry, milho', 'Grande', 1);

/* SELECT que retorna todas as pizzas cujo valor seja maior do que R$ 45,00 */
SELECT * FROM tb_pizzas WHERE preco > 45.00;

/* SELECT que retorna todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00 */
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

/* SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra 'M' no atributo nome */
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

/* SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias */
SELECT tp.nome_pizza, tp.preco, tc.nome_categoria
FROM tb_pizzas tp
INNER JOIN tb_categorias tc ON tp.fk_categoria = tc.id_categoria;

/* SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, */
/* onde traz apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce) */
SELECT tp.nome_pizza, tp.preco, tc.nome_categoria, tc.descricao_categoria
FROM tb_pizzas tp
INNER JOIN tb_categorias tc ON tp.fk_categoria = tc.id_categoria
WHERE tc.nome_categoria = 'Doce';