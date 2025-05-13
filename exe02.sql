USE rh_empresa;

CREATE TABLE colaboradores (
  id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  cargo VARCHAR(50),
  salario DECIMAL(10, 2),
  data_admissao DATE
);