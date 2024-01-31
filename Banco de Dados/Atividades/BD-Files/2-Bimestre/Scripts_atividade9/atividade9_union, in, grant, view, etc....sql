#1) Usando UNION. Escreva uma consulta SQL que retorne o nome e a cidade de todas as peças e 
#	fornecedores que tenham a cor vermelha ou o status 10. 
#	Ordene os resultados por nome em ordem alfabética.

#	Sempre que usar o UNION deve fazer uma consulta pra unir com o mesmo número de colunas
# 	das duas tabelas.
 
USE bdembarqueexercicios;
SELECT
	peca.nome_peca,
    peca.cidade_peca
FROM peca
WHERE peca.cor_peca = "Vermelho"

UNION 

SELECT 
	fornecedor.nome_fornec,
    fornecedor.cidade_fornec
FROM fornecedor
WHERE 
	fornecedor.status_fornec = 10
ORDER BY nome_peca ASC;

#2) Usando UNION. Escreva uma consulta SQL que retorne o código do fornecedor e da peça e a data de todos os 
#	embarques que tenham mais de 300 peças ou que sejam da peça P5. 
#	Ordene os resultados por data em ordem crescente.

USE bdembarqueexercicios;
SELECT
	embarque.cod_fornec,
	embarque.cod_peca,
    embarque.data_embarq
FROM embarque
WHERE 
	embarque.qtde_embarq > 300
    
UNION

SELECT
	embarque.cod_peca,
	embarque.cod_fornec,
	embarque.data_embarq
FROM embarque
WHERE 
	embarque.cod_peca = 'P5'
ORDER BY data_embarq ASC;

#3) Usando EXISTS. Escreva uma consulta SQL que retorne o nome e a cidade de todos os 
#	fornecedores que tenham embarcado alguma peça vermelha. 
#	Ordene os resultados por nome em ordem alfabética.

# Sempre que for usar EXISTS deve-se usar o Select *, para verificar se existe o campo na tabela
# retorna o resultado solicitado.

USE bdembarqueexercicios;
SELECT
	fornecedor.nome_fornec,
    fornecedor.cidade_fornec
FROM fornecedor
WHERE EXISTS(
	SELECT *
		FROM embarque
	WHERE 
		embarque.cod_fornec = fornecedor.cod_fornec 
        AND EXISTS(
			SELECT *
            FROM peca
            WHERE
				peca.cod_peca = embarque.cod_peca AND
				peca.cor_peca = "Vermelho"
                )
)
ORDER BY nome_fornec ASC;

#4) Usando NOT EXISTS. Escreva uma consulta SQL que retorne o nome e a cidade de todos os fornecedores que não tenham embarcado nenhuma peça de cor "Vermelho". 
#Ordene os resultados por nome em ordem alfabética.

USE bdembarqueexercicios;
SELECT 
	fornecedor.nome_fornec,
    fornecedor.cidade_fornec
FROM fornecedor
WHERE NOT EXISTS(
	SELECT *
    FROM embarque
    WHERE cod_fornec = fornecedor.cod_fornec AND
		NOT EXISTS(
			SELECT *
            FROM peca
            WHERE 
				cod_peca = embarque.cod_peca AND cor_peca = "Vermelho"
        )
)
ORDER BY nome_fornec ASC;

#5) Escreva uma consulta SQL que retorne o nome e a cidade de todos os fornecedores que tenham embarcado peças de cor "Vermelho" ou "Verde". 
#	Use o operador IN para filtrar as cores das peças.

USE bdembarqueexercicios;
SELECT DISTINCT
	fornecedor.nome_fornec,
    fornecedor.cidade_fornec
FROM fornecedor
JOIN embarque
	ON embarque.cod_fornec = fornecedor.cod_fornec
JOIN peca
	ON peca.cod_peca = embarque.cod_peca
WHERE cor_peca IN ("Vermelho", "Verde");

#6) Escreva uma consulta SQL que retorne o nome e o peso de todas as peças que não tenham o peso igual a 5 ou 15. Use o operador NOT IN para filtrar os pesos das peças. 
#	Ordene os resultados por nome em ordem alfabética.

USE bdembarqueexercicios;
SELECT 
	peca.nome_peca,
    peca.peso_peca
FROM peca
WHERE peso_peca NOT IN (
	SELECT peso_peca
    FROM peca
    WHERE 
		peca.peso_peca = "5" OR peso_peca = "15"
)
ORDER BY nome_peca ASC;

#7) Escreva um comando SQL que crie uma tabela chamada cliente com os seguintes campos: 
#	id (int, chave primária), 
#	nome (varchar, não nulo), 
#	idade (int, não nulo),
#	cidade (varchar). 

#	Adicione uma restrição CHECK que garanta que a idade do cliente seja maior ou igual a 18 e menor ou igual a 100. 
#	Adicione também uma restrição CHECK que garanta que a cidade do cliente seja uma das seguintes: Porto Alegre, Curitiba ou Rio.

USE bdembarqueexercicios;
CREATE TABLE cliente (
	id_cliente INT NOT NULL,
    nome_cliente VARCHAR(40) NOT NULL,
    idade_cliente INT NOT NULL,
    cidade_cliente VARCHAR(40) NULL,
    
    CONSTRAINT pk_id_cliente
		PRIMARY KEY(id_cliente),
        
	CONSTRAINT checagem_idade
		CHECK(idade_cliente >= 18 AND idade_cliente <= 100),
	
    CONSTRAINT checagem_cidade
		CHECK(cidade_cliente = "Porto Alegre" AND
			cidade_cliente = "Curitiba" AND
            cidade_cliente = "Rio")
);


#8) Escreva um comando SQL que crie uma visão chamada fornecedores_por_status que mostre o nome e a cidade de todos os fornecedores que tenham o status igual a 10 ou 15. 
#	Ordene os resultados por status em ordem crescente. 
#	Faça um select para visualizar a view criada.
USE bdembarqueexercicios;
CREATE VIEW fornecedores_por_status
AS SELECT
	fornecedor.status_fornec,
	fornecedor.nome_fornec,
    fornecedor.cidade_fornec
FROM fornecedor
WHERE status_fornec = 10 OR status_fornec = 15
ORDER BY status_fornec ASC;

#checar a consulta da view
SELECT * FROM fornecedores_por_status;

#9) Escreva um comando SQL que crie uma visão chamada peças_por_cidade que mostre o nome e a cor de todas as peças que tenham a cidade igual a Porto Alegre ou Rio. 
#	Ordene os resultados por cidade em ordem alfabética.

USE bdembarqueexercicios;
CREATE VIEW pecas_por_cidade
AS SELECT
	peca.nome_peca,
    peca.cor_peca
FROM peca
WHERE peca.cidade_peca = "Porto Alegre" OR cidade_peca = "Rio"
ORDER BY cidade_peca ASC;

#checar a consulta da view
SELECT * FROM pecas_por_cidade;