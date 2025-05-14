/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* SELECT que retorna todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00 */
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
