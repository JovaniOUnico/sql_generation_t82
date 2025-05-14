/*  Seleciona o Banco de Dados */
USE db_generation_game_online;

/* Inserção de dados na tabela tb_personagens */
INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, nivel, fk_classe) VALUES
('Arthas', 2500, 1800, 50, 1),
('Gandalf', 2200, 1500, 45, 2),
('Legolas', 1800, 1200, 40, 3),
('Sylvanas', 2100, 1300, 42, 3),
('Garrett', 1900, 1100, 38, 4),
('Jaina', 2300, 1600, 48, 2),
('Uther', 1700, 2000, 46, 5),
('Kael thas', 2400, 1400, 52, 2);
