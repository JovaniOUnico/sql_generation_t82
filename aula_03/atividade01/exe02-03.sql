/*  Seleciona o Banco de Dados */
USE db_generation_game_online;

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
