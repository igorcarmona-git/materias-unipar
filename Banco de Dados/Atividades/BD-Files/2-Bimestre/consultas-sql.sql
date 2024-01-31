#Consultas SQL

#exercicio 1
SELECT * FROM Funcionario
WHERE departamento_id = 1;

#exercicio 2
SELECT * FROM Funcionario
WHERE salario < 4000;

#exercicio3
SELECT nome, departamento_id FROM Funcionario
WHERE salario > 4500;

#exercico4 solução A
SELECT nome FROM Funcionario
WHERE NOT departamento_id = 2;

#exercio4 solução B
SELECT nome FROM Funcionario
WHERE departamento_id <> 2;

#exercicio5
SELECT nome FROM Funcionario
WHERE departamento_id = 2 and salario > 3500;

#exercicio6
SELECT nome, salario FROM Funcionario
WHERE salario >= 1500 and salario <= 4000 and status = 'A';
