#GROUP BY --> é utilizada para agrupar registros com base em um ou mais campos e aplicar funções de agregação aos dados de cada grupo. 
#			  Essa cláusula é usada em conjunto com a cláusula SELECT para realizar consultas que envolvem cálculos agregados, como soma, média, contagem, entre outros.

#ORDER BY --> é usada para ordenar os resultados de uma consulta em uma ordem específica. Ela permite que você especifique uma ou mais colunas pelas quais os resultados devem ser ordenados. 
#			  Ao utilizar o ORDER BY, você pode organizar os resultados de uma consulta de acordo com critérios específicos, como ordenar em ordem alfabética, numérica ou por data.

########################################### DIFERENÇA ENTRE 'GROUP BY' E 'WHERE' ################################################################################################################
#	a diferença entre GROUP BY e WHERE é que o WHERE é usado para filtrar registros com base em condições específicas antes de qualquer agrupamento ou ordenação, 
#	enquanto o GROUP BY é usado para agrupar registros com base em um ou mais campos e aplicar funções de agregação aos dados de cada grupo. 
#	O WHERE é usado para restringir quais registros são selecionados, enquanto o GROUP BY é usado para resumir e agregar os dados selecionados.

#################################################################################################################################################################################################

#1) Usando SQL, escreva uma consulta que obtenha o peso da peça mais pesada.

USE bdembarqueexercicios;
SELECT
	MAX(peca.peso_peca) AS maisPesado
FROM peca;

#2) Usando SQL, escreva uma consulta que obtenha o número de fornecedores que têm embarques.

USE bdembarqueexercicios;
SELECT 
	COUNT(DISTINCT embarque.cod_fornec) AS qtdFornecedores
FROM embarque;

#3) Usando SQL, escreva uma consulta que obtenha os nomes das peças mais pesadas.

USE bdembarqueexercicios;
SELECT 
    peca.nome_peca AS peca_maisPesada
FROM peca
WHERE
    peso_peca = (SELECT MAX(peso_peca) FROM peca) #subquery "Agregações como MAX funcionam quando tem queries"
GROUP BY nome_peca;

#Exemplo2 (Selecionar filmes com o tempo de aluguel acima da media)
# SELECT title, rental_duration
# FROM film
# WHERE
#	rental_duration = (SELECT AVG(rental_duration) FROM film);

#4) Usando SQL, escreva uma consulta que obtenha o número de fornecedores da cidade 'Porto Alegre' que têm embarques.

USE bdembarqueexercicios;
SELECT
	COUNT(DISTINCT fornecedor.cod_fornec) AS qtd_Fornecedores
FROM fornecedor
	JOIN embarque 
	USING(cod_fornec)
WHERE fornecedor.cidade_fornec = "Porto Alegre";

#5) Usando SQL, escreva uma consulta que, para cada fornecedor que tem embarques, 
# 	obtenha a quantidade de peças de seu menor embarque.

USE bdembarqueexercicios;
SELECT
	embarque.cod_fornec, 
    MIN(qtde_embarq) AS menor_qtde_pecas
FROM embarque
GROUP BY embarque.cod_fornec;

#6) Usando SQL, escreva uma consulta que, para cada cidade em que há uma peça, 
#	obtenha o nome da cidade e a média dos pesos das peças que se encontram na cidade.

USE bdembarqueexercicios;
SELECT 
	peca.cidade_peca,
    AVG(peca.peso_peca) AS media_pesoPecas
FROM peca
WHERE cidade_peca IS NOT NULL
GROUP BY peca.cidade_peca;

#7) Usando SQL, escreva uma consulta que, para cada cor de peça, obtenha a cor seguida do número de diferentes 
#	cidades em que as peças da cor se encontram. Cidades não informadas (NULL) não deve ser incluídas.

USE bdembarqueexercicios;
SELECT
	peca.cor_peca, 
    COUNT(DISTINCT peca.cidade_peca) AS qtde_cidades
FROM peca
GROUP BY peca.cor_peca;

#8) Escreva uma consulta em SQL, que, para cada disciplina do departamento denominado 'Informática', 
#	obtenha seu número, seus créditos e seu nome. As disciplinas com o maior número de créditos devem aparecer na frente. 
#	Disciplinas com um mesmo número de créditos devem aparecer ordenadas por número de disciplina.

USE dbacademicoexercicios;
SELECT
	disciplina.num_disc,
    disciplina.creditos_disc,
    disciplina.nome_disc
FROM disciplina
	JOIN depto 
		ON disciplina.cod_depto = depto.cod_depto
WHERE depto.nome_depto = "Informática"
ORDER BY 
	disciplina.creditos_disc DESC,
	disciplina.num_disc ASC;

#Exercicios 9 e 10 utiliza a funcao sum()
#9) Selecione o nome do fornecedor e a quantidade total de peças que eles forneceram. Apenas inclua fornecedores que forneceram mais de 500 peças.

USE bdembarqueexercicios;
SELECT
	fornecedor.nome_fornec,
    SUM(embarque.qtde_embarq) AS total_qtdePecas
FROM fornecedor
	JOIN embarque
		USING(cod_fornec)
	JOIN peca
		USING(cod_peca)
GROUP BY fornecedor.cod_fornec
	HAVING total_qtdePecas > 600;

#10) Selecione o nome da cidade e o número total de peças enviadas para cada cidade. Apenas inclua cidades que receberam mais de 100 peças.

USE bdembarqueexercicios;
SELECT
	fornecedor.cidade_fornec,
    SUM(embarque.qtde_embarq) AS total_qtdePecas
FROM fornecedor
	NATURAL JOIN embarque
GROUP BY fornecedor.cidade_fornec
	HAVING total_qtdePecas > 1200;

	