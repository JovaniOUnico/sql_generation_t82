/*  Seleciona o Banco de Dados */
USE db_generation_game_online;

/* SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traz apenas os personagens que pertençam a uma classe específica (Exemplo: Todos os personagens da classe dos arqueiros) */
SELECT tp.nome_personagem, tp.poder_ataque, tc.nome_classe
FROM tb_personagens tp
INNER JOIN tb_classes tc ON tp.fk_classe = tc.id_classe
WHERE tc.nome_classe = 'Arqueiro';