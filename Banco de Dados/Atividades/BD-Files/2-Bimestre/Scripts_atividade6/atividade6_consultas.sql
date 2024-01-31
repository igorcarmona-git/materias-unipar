#Exercicio 1
#1) Considere o banco de dados da imagem abaixo. Escreva uma consulta em SOL para obter o código, o nome e o peso de cada peça para a qual existe ao menos um embarque do fornecedor de nome 'Silva'.

use bdembarqueexercicios;
SELECT 
	peca.cod_peca,  
    nome_peca, 
    peso_peca
FROM 
	peca, 
    fornecedor,
    embarque
WHERE 
	peca.cod_peca = embarque.cod_peca 
	and
    fornecedor.cod_fornec = embarque.cod_fornec
    and
    fornecedor.nome_fornec = "Silva";

#Exercicio 2
#2) Considere o banco de dados da imagem abaixo. Escreva uma consulta em SQL que, para cada sala do prédio denominado 'Informática - aulas', 
# obtenha o código de seu prédio, juntamente com seu número, sua descrição e sua capacidade.

use dbacademicoexercicios;
SELECT
    predio.cod_pred as código,
    sala.num_sala as n_sala,
    sala.descricao_sala as descrição,
    sala.capacidade_sala
FROM
	sala,
    predio
WHERE 
	sala.cod_pred = predio.cod_pred
    and
    nome_pred = "Informática - aulas";

#Exercicio 3
#3) Considere o banco de dados da imagem abaixo. Escreva uma consulta em SQL que, para cada disciplina cujo nome contenha a cadeia de caracteres 'ação' em minúsculas, 
# obtenha seu identificador (número de disciplina) e seu nome.

use dbacademicoexercicios;
SELECT
	disciplina.num_disc,
    disciplina.nome_disc
FROM
	disciplina
WHERE
	# procura por qualquer palavra que tenha dentre elas o conjunto "ação", ex.: "Programação" e transforma em letra minuscula. 
	lower(disciplina.nome_disc) LIKE "%ação%";

#Exercicio4
#4) Considere o banco de dados da questão 1. Escreva uma consulta em SQL que, para cada embarque do fornecedor de código 'F1', obtenha o código de peça, a data de embarque e a quantidade embarcada.

use bdembarqueexercicios;
SELECT
	peca.cod_peca,
    embarque.data_embarq,
    embarque.qtde_embarq
FROM
	peca,
    embarque,
    fornecedor
WHERE
	fornecedor.cod_fornec = embarque.cod_fornec
    and
    peca.cod_peca = embarque.cod_peca
    and
	fornecedor.cod_fornec = "F1";

#Exercicio5
#5) Considere o banco de dados da questão 1. Escreva uma consulta em SQL que obtenha as datas nas quais houve embarques do fornecedor de código 'F1'. Datas repetidas não devem aparecer no resultado.

use bdembarqueexercicios;
SELECT DISTINCT
	embarque.data_embarq
FROM
	embarque,
    fornecedor
WHERE
	#ligação entre as tabelas, restringir
	fornecedor.cod_fornec = embarque.cod_fornec
    and
	fornecedor.cod_fornec = "F1";

#Exercicio6
#6) Considere o banco de dados da questão 3. Escreva uma consulta em SQL que obtenha os nomes dos departamentos que têm ao menos uma disciplina. Cada nome de departamento deve constar uma única vez do resultado.

use dbacademicoexercicios;
SELECT DISTINCT
	depto.nome_depto
FROM
	disciplina,
    depto
WHERE
	# Se existe a relação, é porque departamento possui ao menos uma disciplina
	depto.cod_depto = disciplina.cod_depto;