/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* Inserção de dados na tabela tb_pizzas */
INSERT INTO tb_pizzas (nome_pizza, preco, ingredientes, tamanho, fk_categoria) VALUES
('Mussarela', 42.50, 'Mussarela, tomate, orégano', 'Média', 1),
('Calabresa', 48.00, 'Calabresa, cebola, azeitona', 'Grande', 1),
('Chocolate com Morango', 55.00, 'Chocolate, morango, leite condensado', 'Média', 2),
('Marguerita', 45.00, 'Mussarela, tomate cereja, manjericão', 'Média', 3),
('Portuguesa', 52.00, 'Mussarela, presunto, ovo, cebola, azeitona', 'Grande', 1),
('Romeu e Julieta', 50.00, 'Goiabada, queijo minas', 'Pequena', 2),
('Palmito Pupunha', 58.00, 'Palmito pupunha, champignon, azeitona, tomate seco', 'Grande', 3),
('Frango com Catupiry', 56.00, 'Frango desfiado, catupiry, milho', 'Grande', 1);