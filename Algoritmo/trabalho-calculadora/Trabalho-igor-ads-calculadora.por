algoritmo
	declare num1, num2, result, verificar numerico
	op, resposta, resposta2 literal
	
	resposta <- "sim"
	resposta2 <- "sim"
	// Obs: Ao invés de utilizar o comando REPITA, eu estava tentando utilizar o comando CASO para fazer o menu,
	// mas não sei o porque o meu Portugol não identifica o comando CASO, então fiz por REPITA.
	
	repita
		escreva "SAIR da Calculadora, digite (sair) ou (nao)"
		leia op
		se op = "sair" entao
		inicio
			escreva "Você saiu do programa!"
			result <- (1/0)
			// gambiarra para encerrar o programa através de erro.
			// Não sei o comando de encerrar o programa em Portugol.
		fim
		
		escreva "Digite o primeiro numero para o cálculo: "
		leia num1
		escreva "--------------------------------------------"
		escreva "Digite o segundo numero para o cálculo: "
		leia num2
		escreva "--------------------------------------------"
		escreva "Digite o símbolo da operação: (+, -, * ou /)"
		leia op
		escreva "--------------------------------------------"
		// verifica as condicionais das operações, identifica qual operação usuário digitou
		// e faz o cálculo 
		
		se op = "+" entao
		inicio
			result <- (num1 + num2)
			escreva "O resultado de ", num1, " e ", num2, " é: ", result
		fim
		senao se op = "-" entao
		inicio
			result <- (num1 - num2)
			escreva "O resultado de ", num1, " e ", num2, " é: ", result
		fim
		senao se op = "*" entao
		inicio
			result <- (num1 * num2)
			escreva "O resultado de ", num1, " e ", num2, " é: ", result
		fim
		senao
		inicio
			// verificação se caso o número for dívidido por 0.
			se num2 = 0 entao
			inicio
				escreva "--------------------------------------------"
				escreva "Não é possível realizar a divisão por 0"
				escreva "Programa encerrado, execute-o novamente!"
				escreva "--------------------------------------------"
				
			fim
			result <- (num1 / num2)
			escreva "O resultado de ", num1, " e ", num2, " é: ", result
		fim
		
		escreva "Deseja realizar novamente uma nova operação? Digite (sim) ou (nao)"
		leia resposta
		se resposta <> "sim" entao
		inicio
			escreva "--------------------------------------------"
			escreva "O programa foi encerrado! Você saiu do programa!"
			escreva "--------------------------------------------"
		fim
		// caso o usuário digite que não deseja realizar uma nova operação, ainda tem a 
		// possibilidade dele ver a última operação realizada.
		escreva "Deseja ver a última operação realizada? Digite (sim) ou (nao)"
		leia resposta2
		
		se resposta2 = "sim" entao
		inicio
			
verificar <- result
			escreva "--------------------------------------------"
			escreva "Última operação realizada: ",num1, " ",op ," ",num2, ": ", verificar
			escreva "--------------------------------------------"
		fim
		
	ate resposta <> "sim"	
fim_algoritmo
