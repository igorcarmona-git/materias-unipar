algoritmo
 	declare vNumTabuada, vContador, vResultado numerico
		vSelecao literal
	vSelecao <- "sim"	
 	enquanto vSelecao = "sim" ou vSelecao = "s" faca
 	inicio
	 	escreva "Informe o número da tabuada:"
	 	leia vNumTabuada
	
	 	se vNumTabuada < 1 ou vNumTabuada > 200 entao
	 		escreva "Número informado não é valido"
		senao	
		inicio
			escreva "Estrutura para .. ate .. faca"
		 	para vContador <- 1 ate 10 faca
		 	inicio
				vResultado <- vNumTabuada * vContador
		 		escreva vNumTabuada, " X ", vContador, " = ", vResultado
		 	fim
		 	
		 	escreva " "
			escreva "Estrutura enquanto .. faca"
			vContador <- 1
		 	enquanto vContador <= 10 faca
		 	inicio
				vResultado <- vNumTabuada * vContador
		 		escreva vNumTabuada, " X ", vContador, " = ", vResultado 		
		 		vContador <- vContador + 1
		 	fim
	 	fim
	 	escreva " "
	 	escreva "Deseja continuiar?"
	 	leia vSelecao
	 	limpar_tela()
	fim 	
fim_algoritmo
