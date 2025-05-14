/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra 'M' no atributo nome */
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';
