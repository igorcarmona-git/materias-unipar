algoritmo
	declare alunos[4] registro (nome literal idade, documento numerico ativo logico) cont numerico
	afirma logico resposta literal
	
	cont <- 1
	afirma <- verdadeiro
	
	enquanto cont <= 4 e afirma=verdadeiro faca
	inicio
		escreva "Nome:"
		leia alunos[cont].nome
		
		escreva "Idade:"
		leia alunos[cont].idade
		
		escreva "Documento:"
		leia alunos[cont].documento
		
		escreva "Situacao:"
		escreva "Digite exatamente (verdadeiro) ou (falso)"
		leia alunos[cont].ativo
		
		escreva "Seu nome �: ", alunos[cont].nome
		escreva "Sua idade �: ", alunos[cont].idade
		escreva "Seu documento �: ", alunos[cont].documento
		escreva "Sua situa��o �: ", alunos[cont].ativo
		
		escreva "Voce deseja continuar com um novo aluno? Digite exatamente: (sim) ou (nao) "
		leia resposta 
		
		se resposta <> "sim" entao
			afirma <- falso
			
		cont <- cont + 1
	fim
fim_algoritmo
