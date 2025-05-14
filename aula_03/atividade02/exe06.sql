/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* SELECT que retorna todas as pizzas cujo valor seja maior do que R$ 45,00 */
SELECT * FROM tb_pizzas WHERE preco > 45.00;