#Feito em ordem do exercicio os updates.
UPDATE fornecedor 
SET 
    status_fornec = status_fornec + 2
WHERE
    cod_fornec = 'f2';
    
UPDATE peca 
SET 
    peso_peca = peso_peca + 15
WHERE
    cod_peca = 'p3';

UPDATE fornecedor 
SET 
    nome_fornec = 'Pedro'
WHERE
    cod_fornec = 'f4';

UPDATE fornecedor 
SET 
    cidade_fornec = 'Rio de Janeiro'
WHERE
    cod_fornec = 'f1';

UPDATE peca 
SET 
    cor_peca = 'vermelho'
WHERE
    cod_peca = 'p1';

