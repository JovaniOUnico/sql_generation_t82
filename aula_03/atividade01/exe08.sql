/*  Seleciona o Banco de Dados */
USE db_generation_game_online;

/* SELECT utilizando o operador LIKE, buscando todos os personagens que possuam a letra 'C' no atributo nome */
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%c%';
