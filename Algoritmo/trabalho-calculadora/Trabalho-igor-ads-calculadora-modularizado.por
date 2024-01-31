algoritmo
	declare num1, num2, result, verificar numerico
	op, resposta, resposta2, operacaonova literal
	resposta3 logico
	
	resposta3 <- falso
	
	// Obs: Ao invés de utilizar o comando REPITA, eu estava tentando utilizar o comando CASO para fazer o menu,
	// mas não sei o porque o meu Portugol não identifica o comando CASO, então fiz por REPITA.
	
	repita
		escreva "------||-----------||-------------||--------------"
		escreva "CALCULADORA BASICA DO IGOR CARMONA"
		escreva "------||-----------||-------------||--------------"
		escreva "--------------------------------------------------"
		escreva "Digite o primeiro numero para o cálculo: "
		leia num1
		escreva "--------------------------------------------------"
		escreva "Digite o segundo numero para o cálculo: "
		leia num2
		escreva "--------------------------------------------------"
		escreva "Digite o símbolo da operação: (+, -, * ou /)"
		leia op
		escreva "--------------------------------------------------"
		
		// Verifica as condicionais das operações, identifica qual operação usuário digitou
		// e faz o cálculo
		calculoOP()
		
		// Visualiza a ultima operação realizada pelo usuário
		ver_ultimaOP()
		
		// Pergunta ao usuário se deseja realizar uma nova operação
		novaOP()
		// Pergunta ao usuário se deseja sair do programa
		se resposta3 = falso entao
			sairprograma()
		
	ate resposta3 = verdadeiro
fim_algoritmo
sub-rotina novaOP()
	escreva "Deseja realizar novamente uma nova operação? Digite (sim) ou (nao)"
	leia operacaonova
	
	se operacaonova = "nao" entao
	inicio
		escreva "--------------------------------------------------"
		escreva "O programa foi encerrado! Você saiu do programa!"
		escreva "--------------------------------------------------"
		resposta3 <- verdadeiro
	fim
fim_sub_rotina novaOP
sub-rotina ver_ultimaOP()
	escreva "Deseja ver a última operação realizada? Digite (sim) ou (nao)"
	leia resposta2
		
	se resposta2 = "sim" entao
	inicio
		verificar <- result
		escreva "--------------------------------------------------"
		escreva "Última operação realizada: ",num1, " ",op ," ",num2, ": ", verificar
		escreva "--------------------------------------------------"
	fim
fim_sub_rotina ver_ultimaOP
sub-rotina calculoOP()
	se (op <> "+") e (op <> "-") e (op <> "*") e (op <> "/") entao
	inicio
		escreva "--------------------------------------------------"
		escreva "Voce digitou um símbolo errado!"
		escreva " Digite novamente, CORRETAMENTE!"
		escreva "--------------------------------------------------"
		escreva "Digite o símbolo da operação: (+, -, * ou /)"
		leia op
	fim
	
	se op = "+" entao
	inicio
		result <- (num1 + num2)
		escreva "O resultado de ", num1, " ", op," ", num2, " é: ", result
	fim
	senao se op = "-" entao
	inicio
		result <- (num1 - num2)
		escreva "O resultado de ", num1, " ", op," ", num2, " é: ", result
	fim
	senao se op = "*" entao
	inicio
		result <- (num1 * num2)
		escreva "O resultado de ", num1, " ", op," ", num2, " é: ", result
	fim
	senao
	inicio
		// verificação se caso o número for dívidido por 0.
		se num2 = 0 entao
		inicio
			escreva "--------------------------------------------------"
			escreva "Não é possível realizar a divisão por 0"
			escreva "Programa encerrado, execute-o novamente!"
			escreva "--------------------------------------------------"		
		fim
		result <- (num1 / num2)
		escreva "O resultado de ", num1, " ", op," ", num2, " é: ", result
	fim
fim_sub_rotina calculoOP
sub-rotina sairprograma()
	escreva "Para SAIR da Calculadora, digite (sim) ou (nao)"
	leia resposta
	
	se resposta = "sim" entao
	inicio
		escreva "--------------------------------------------------------"		
		escreva "Voce saiu do programa!"
		escreva "--------------------------------------------------------"		
	fim
fim_sub_rotina sairprograma
