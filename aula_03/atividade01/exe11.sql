/*  Criação do Banco de Dados */
CREATE DATABASE db_generation_game_online;

/*  Seleciona o Banco de Dados */
USE db_generation_game_online;

/* Criação da Tabela tb_classes */
CREATE TABLE tb_classes (
    id_classe INT PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    descricao_classe VARCHAR(255)
);

/* Criação da Tabela tb_personagens */
CREATE TABLE tb_personagens (
    id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    nome_personagem VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    fk_classe INT,
    FOREIGN KEY (fk_classe) REFERENCES tb_classes(id_classe)
);

/* Inserção de dados na tabela tb_classes */
INSERT INTO tb_classes (nome_classe, descricao_classe) VALUES
('Guerreiro', 'Mestres do combate corpo a corpo, focados em força e resistência.'),
('Mago', 'Utilizam magia arcana para atacar à distância e controlar elementos.'),
('Arqueiro', 'Especialistas em ataques de longo alcance com arcos e flechas.'),
('Ladino', 'Ágeis e sorrateiros, focados em ataques rápidos e furtivos.'),
('Clérigo', 'Sacerdotes com habilidades de cura e suporte, além de magia divina.');

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

/* SELECT que retorna todos os personagens cujo poder de ataque seja maior do que 2000 */
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

/* SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo 1000 e 2000 */
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

/* SELECT utilizando o operador LIKE, buscando todos os personagens que possuam a letra 'C' no atributo nome */
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%c%';

/* SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes */
SELECT tp.nome_personagem, tp.poder_ataque, tc.nome_classe
FROM tb_personagens tp
INNER JOIN tb_classes tc ON tp.fk_classe = tc.id_classe;

/* SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traz apenas os personagens que pertençam a uma classe específica (Exemplo: Todos os personagens da classe dos arqueiros) */
SELECT tp.nome_personagem, tp.poder_ataque, tc.nome_classe
FROM tb_personagens tp
INNER JOIN tb_classes tc ON tp.fk_classe = tc.id_classe
WHERE tc.nome_classe = 'Arqueiro';