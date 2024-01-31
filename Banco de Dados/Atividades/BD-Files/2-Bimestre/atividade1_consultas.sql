CREATE DATABASE atividade1_consultas;
USE atividade1_consultas;

#criação da tabela departamento
CREATE TABLE IF NOT EXISTS Departamento (
  id INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
  );

#criação da tabela funcionario
CREATE TABLE IF NOT EXISTS Funcionario (
  id INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  salario DECIMAL(10,2) NOT NULL,
  status CHAR(1) NOT NULL,
  departamento_id INT NOT NULL,
  CONSTRAINT pk_id_funcionario
	PRIMARY KEY (id),
  
  CONSTRAINT fk_Funcionario_Departamento
    FOREIGN KEY (departamento_id)
    REFERENCES Departamento (id)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
    );

#inserir as informações
INSERT INTO Departamento (id, nome)
	VALUES 
    (1, 'Vendas'), 
    (2, 'Marketing'), 
    (3, 'TI');

INSERT INTO Funcionario (id, nome, salario, departamento_id, status)
	VALUES 
    (1, 'João Silva', 4500.00, 2, 'A'), 
    (2, 'Maria Santos', 5000.00, 2, 'A'), 
    (3, 'Pedro Souza', 1500.00, 1, 'A'), 
    (4, 'Ana Oliveira', 2000.00, 3, 'I'), 
    (5, 'Lucas Costa', 4000.00, 3, 'A');