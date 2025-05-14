/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias */
SELECT tp.nome_pizza, tp.preco, tc.nome_categoria
FROM tb_pizzas tp
INNER JOIN tb_categorias tc ON tp.fk_categoria = tc.id_categoria;