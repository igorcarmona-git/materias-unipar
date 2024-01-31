algoritmo
	declare tabuada[3,10], linha, vNumero, vContador numerico
	
	escreva "Informe o número para calcular a tabuada: "
	
	leia vNumero 
	
	para linha <- 1 ate 3 faca
	inicio
		para vContador <- 1 ate 10 faca
		inicio
			tabuada[linha, vContador] <- (vNumero*vContador)
		fim
		
		para vContador <- 1 ate 10 faca
		inicio
			escreva vNumero, " X ", vContador, " = ", tabuada[linha, vContador]
		fim
		
		escreva "     "
		vNumero <- vNumero + 1
	fim
fim_algoritmo
