#Exercicio1

#Escreva uma consulta em SQL que obtenha o código 
#e o nome de cada departamento que tenha ao menos um professor 
#com título denominado “Mestre”. Use junção.

USE dbacademicoexercicios;
SELECT DISTINCT
	depto.cod_depto,
    depto.nome_depto
FROM depto
	JOIN professor
		ON depto.cod_depto = professor.cod_depto
	JOIN titulacao
		ON professor.cod_tit = titulacao.cod_tit
WHERE
	nome_tit = "Mestre";

#Exercicio2

#Escreva uma consulta em SQL que, para cada embarque realizado 
#por um fornecedor cuja cidade é diferente da peça embarcada, 
#obtenha o código e o nome do fornecedor bem como o código e o 
#nome da peça. Use junção.

USE bdEmbarqueExercicios;
SELECT
	fornecedor.cod_fornec,
    fornecedor.nome_fornec,
    peca.cod_peca,
    peca.nome_peca
FROM fornecedor
    JOIN embarque
		ON fornecedor.cod_fornec = embarque.cod_fornec
    JOIN peca
		ON peca.cod_peca = embarque.cod_peca
WHERE
	fornecedor.cidade_fornec != peca.cidade_peca;

#Exercicio3

#Escreva uma consulta em SQL que obtenha o código e o nome de 
#cada departamento que tenha ao menos um professor com título 
#denominado 'Mestre'. Use equijunção.

USE dbacademicoexercicios;
SELECT DISTINCT
	depto.cod_depto,
    depto.nome_depto
FROM depto
	JOIN professor
		# "USING" --> Compara tabela depto com professor com o nome especificado
		USING(cod_depto)
	JOIN titulacao
		USING(cod_tit)
WHERE
	nome_tit = "Mestre";
    
#Exercicio4

#Escreva uma consulta em SQL que obtenha o código e o nome de 
#cada departamento que tenha ao menos um professor com título 
#denominado 'Mestre'. Use a junção natural.

USE dbacademicoexercicios;
SELECT DISTINCT
	depto.cod_depto,
    depto.nome_depto
FROM depto
	# "Natural Join" --> Compara todas as linhas da tabela depto com professor, 
    # se existem iguais.
	NATURAL JOIN professor
    NATURAL JOIN titulacao
WHERE
	nome_tit = "Mestre";

#Exercicio5

#Escreva uma consulta em SQL que obtenha o nome de cada professor que ministrou 
#aulas em uma oferta no ano-semestre 20022.

USE dbacademicoexercicios;
SELECT
	professor.nome_prof
FROM professor
	JOIN prof_oferta
		USING(cod_prof)
WHERE
	ano_sem = 20022;

#Exercicio6

#Usando SQL, escreva uma consulta que, para cada departamento, obtenha seu código
# e seu nome, seguidos do número e do nome de cada disciplina do departamento. 
#Caso o departamento não tenha disciplinas, as colunas referentes à disciplina 
#devem aparecer vazias.

USE dbacademicoexercicios;
SELECT
	depto.cod_depto,
    depto.nome_depto,
    disciplina.num_disc,
    disciplina.nome_disc
FROM depto
	#"LEFT" --> Tras todas as informações da tabela depto mesmo que não 
    #tenha relacionamento 
    #"RIGHT" --> Tras todas as informações da tabela disciplina mesmo que não 
    #tenha relacionamento 
NATURAL LEFT JOIN disciplina;