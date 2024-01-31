algoritmo
	declare alunos[4] registro (nome literal idade, documento numerico ativo logico) cont numerico
	afirma literal resposta literal r_situacao literal
	
	cont <- 1
	afirma <- "sim"
	r_situacao <- "ativo"
	
	enquanto cont <= 4 e afirma="sim" faca
	inicio
		escreva "Nome do aluno ", cont, ":"
		leia alunos[cont].nome
		
		escreva "Idade do aluno ", cont, ":"
		leia alunos[cont].idade
		
		escreva "Documento do aluno ", cont, ":"
		leia alunos[cont].documento
		
		escreva "Situacao do aluno  ", cont, ":"
		escreva "Digite exatamente (ativo) ou (inativo)"
		leia r_situacao
		
		se r_situacao = "ativo"  entao
			alunos[cont].ativo <- verdadeiro
		senao
			alunos[cont].ativo <- falso
			
		escreva "Seu nome é: ", alunos[cont].nome
		escreva "Sua idade é: ", alunos[cont].idade
		escreva "Seu documento é: ", alunos[cont].documento
		
		//para imprimir na tela (ativo) ao invés de imprimir (verdadeiro)
		se alunos[cont].ativo = verdadeiro entao
			escreva "Sua situacao é ativo"
		senao
			escreva "Sua situacao é inativa"
		//Se deseja prosseguir ou não para o proximo aluno
		escreva "Voce deseja continuar com um novo aluno? Digite exatamente: (sim) ou (nao) "
		leia resposta 
		
		se resposta <> "sim" entao
			afirma <- "nao"
			
		cont <- cont + 1
	fim
fim_algoritmo
