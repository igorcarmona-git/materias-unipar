#	10) Escreva um conjunto de comandos SQL que crie um usuário chamado aluno com a senha 1234, 
#	conceda a ele permissão de SELECT e UPDATE na tabela peca, e depois revogue a permissão de UPDATE.
								
CREATE USER 'aluno'@'localhost' IDENTIFIED BY '1234'; #senha

GRANT SELECT, UPDATE 
	ON bdembarqueexercicios.peca 
    TO 'aluno'@'localhost';
FLUSH PRIVILEGES;

REVOKE UPDATE 
	ON bdembarqueexercicios.peca
    FROM 'aluno'@'localhost';
FLUSH PRIVILEGES;

#	Após executar o comando GRANT, você precisa recarregar as tabelas de privilégios para que as alterações tenham efeito imediato. 
#	Para fazer isso, execute o comando FLUSH PRIVILEGES