/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, */
/* onde traz apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce) */
SELECT tp.nome_pizza, tp.preco, tc.nome_categoria, tc.descricao_categoria
FROM tb_pizzas tp
INNER JOIN tb_categorias tc ON tp.fk_categoria = tc.id_categoria
WHERE tc.nome_categoria = 'Doce';