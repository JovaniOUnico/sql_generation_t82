/*  Seleciona o Banco de Dados */
USE db_generation_game_online;

/* SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo 1000 e 2000 */
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
