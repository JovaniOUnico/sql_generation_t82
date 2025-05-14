CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE colaboradores (
  id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  cargo VARCHAR(50),
  salario DECIMAL(10, 2),
  data_admissao DATE
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao) VALUES
                          ('Ana Silva', 'Analista de RH', 3500.00, '2023-08-15'),
                          ('Pedro Souza', 'Desenvolvedor Júnior', 2800.50, '2024-01-20'),
                          ('Carla Oliveira', 'Assistente Administrativo', 1800.00, '2022-05-10'),
                          ('Lucas Santos', 'Gerente de Projetos', 5200.75, '2021-11-01'),
                          ('Mariana Costa', 'Estagiária', 1200.00, '2024-03-05');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 1950.00 WHERE nome = 'Carla Oliveira';