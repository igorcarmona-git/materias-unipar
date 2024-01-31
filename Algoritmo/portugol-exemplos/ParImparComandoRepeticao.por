algoritmo
	declare vNumero, vResto, vContador numerico
		vNumerosPares, vNumerosImpares literal
	leia vContador
	
	//para vNumero <- 1 ate vContador faca
	//inicio
	//	vResto <- resto(vNumero, 2)
	//	se vResto = 0 entao
	//		vNumerosPares <- vNumerosPares, ", ", vNumero	
	//	senao
	//		vNumerosImpares <- vNumerosImpares, ", ", vNumero
	//fim
	//escreva "Pares =", vNumerosPares
	//escreva "Impares =", vNumerosImpares
	
	para vNumero <- 1 ate vContador faca
	inicio
		vResto <- resto(vNumero, 2)
		se vResto = 0 entao
			escreva "O número ", vNumero, " é par!!"	
		senao
			escreva "O número ", vNumero, " é impar!!"	
	fim
	
fim_algoritmo
//10 / 2 = 5 resto 0
//9 / 2  = 4 resto 1
//8 / 2  = 4 resto 0
//7 / 2  = 3 resto 1
