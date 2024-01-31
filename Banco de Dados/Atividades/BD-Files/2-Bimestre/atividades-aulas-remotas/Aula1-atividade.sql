#1) Considere o banco de dados da abaixo. Escreva uma consulta em SQL que obtenha os diferentes nomes de disciplinas que têm mais que quatro créditos.

USE dbacademicoexercicios;
SELECT
	disciplina.nome_disc
FROM depto
	JOIN disciplina
		ON depto.cod_depto = disciplina.cod_depto
WHERE
	disciplina.creditos_disc > 4;

#2) Considere o banco de dados abaixo. Escreva uma consulta em SQL que obtenha os nomes dos fornecedores que preencham os dois requisitos a seguir listados:
#- O fornecedor deve ter ao menos um embarque da peça de código 'P1
#- A cidade do fornecedor deve ser idêntica a uma cidade na qual há alguma peça de peso maior que 4.

USE bdembarqueexercicios;
SELECT
	fornecedor.nome_fornec
FROM embarque
	JOIN peca
		USING(cod_peca)
	JOIN fornecedor
		USING(cod_fornec)
WHERE
	fornecedor.cod_fornec = embarque.cod_fornec 
    and cod_peca = 'P1' and peso_peca > 4;
    
#3) Considere o banco de dados da imagem abaixo. Escreva uma consulta em SQL que obtenha o código e o nome de cada professor cujo código de titulação esteja vazio (NULL).

USE dbacademicoexercicios;
SELECT
	professor.cod_prof,
    professor.nome_prof
FROM professor
	JOIN depto
		USING(cod_depto)
	JOIN titulacao
		USING(cod_tit)
WHERE
	cod_tit IS NULL;
    
#4) Considere o banco de dados abaixo. Escreva uma consulta em SQL que obtenha os dados de cada professor que tenha ministrado aulas em disciplinas do departamento de nome 'Informática'.

USE dbacademicoexercicios;
SELECT *
FROM professor
	JOIN depto
		USING(cod_depto)
WHERE
	nome_depto LIKE "Infor%";
    
#5) Considere o banco de dados abaixo. Escreva uma consulta em SQL para obter o código de cada peça embarcada pelo fornecedor de nome 'Silva'. 
#A seguir, usando esta consulta como subconsulta, escreva uma consulta para obter o código, o nome e o peso de cada peça para a qual exista ao menos um embarque do fornecedor de nome 'Silva'.

USE bdembarqueexercicios;
SELECT
	embarqueSilva.cod_peca
FROM (	SELECT
			peca.cod_peca,
            peca.nome_peca,
            peca.peso_peca
		FROM embarque
			JOIN peca
				ON embarque.cod_peca = peca.cod_peca
			JOIN fornecedor 
				ON fornecedor.cod_fornec = embarque.cod_fornec
		) AS embarqueSilva,
        fornecedor
WHERE 
	nome_fornec = "Silva";