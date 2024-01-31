#Deletar fornecedores:
DELETE FROM fornecedor 
WHERE
    cod_fornec = 'f3';
    
DELETE FROM fornecedor 
WHERE
    cidade_fornec = 'maringá';

#Deletar peças:
DELETE FROM peca 
WHERE
    nome_peca = 'roda';

#Deletar embarques:
DELETE FROM embarque 
WHERE
    cod_peca = 'p1';

