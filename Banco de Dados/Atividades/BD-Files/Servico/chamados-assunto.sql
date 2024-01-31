#Todos os chamados sobre um assunto ao ano
SELECT
    Chamado.id,
    Chamado.assunto,
    (SELECT
    	Solucao.solucao
    FROM Solucao
    WHERE Solucao.id = Chamado.solucao
    ) AS Solucao,	
    Setor.nome AS Nome_Setor,
    Chamado.`data`,
    Status.nome AS Status
FROM Chamado
JOIN Setor ON Setor.id = Chamado.setor
JOIN Status ON Status.id = Chamado.status 
WHERE 
    Chamado.`data` >= '2023-01-01'
    AND Status.nome = "Finalizado"
 	AND (Chamado.assunto LIKE "%toner%" OR Chamado.assunto LIKE "%tonner%")
ORDER BY Chamado.`data` DESC;

#Quantidade de chamados sobre um assunto por mês
SELECT
	MONTH(Chamado.`data`) AS mes,
    COUNT(*) AS quantidade
FROM Chamado
JOIN Setor ON Setor.id = Chamado.setor
JOIN Status ON Status.id = Chamado.status 
WHERE 
    Chamado.`data` >= '2023-01-01'
    AND Status.nome = "Finalizado"
    AND (Chamado.assunto LIKE "%toner%" OR Chamado.assunto LIKE "%tonner%")
GROUP BY mes
ORDER BY mes;

SELECT * FROM Chamado c ;
