algoritmo
	declare vNumeroTabuada, vResultado, vContador numerico
		vResposta literal
	vResposta <- "sim"
	repita
		escreva "Informe o número da tabuada:"
		leia vNumeroTabuada
		vContador <- 1
		repita
			
vResultado <- vNumeroTabuada * vContador
			escreva vNumeroTabuada, " X ", vContador, " = ", vResultado
			vContador <- vContador + 1
		ate vContador > 10
		escreva " "
		escreva "Deseja continuar?"
		leia vResposta
		limpar_tela()
	ate vResposta = "nao"
	
fim_algoritmo
