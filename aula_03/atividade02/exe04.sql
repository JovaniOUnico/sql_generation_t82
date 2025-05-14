/* Seleciona o Banco de Dados */
USE db_pizzaria_legal;

/* Inserção de dados na tabela tb_categorias */
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Salgada', 'Pizzas com sabores tradicionais e ingredientes salgados.'),
('Doce', 'Pizzas com sabores doces, ideais para sobremesa.'),
('Vegetariana', 'Pizzas com ingredientes exclusivamente vegetais.'),
('Especial', 'Pizzas com combinações de ingredientes diferenciadas e premium.'),
('Vegana', 'Pizzas sem nenhum ingrediente de origem animal.');