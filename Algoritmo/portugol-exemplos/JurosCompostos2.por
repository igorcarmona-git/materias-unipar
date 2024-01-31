algoritmo
	declare vCapital, vJuros, vTempo, vMontante, vContador numerico
	vCapital <- 100
	vJuros <- 10
	vTempo <- 20000
	vMontante <- vCapital
	para vContador <- 1 ate vTempo faca
	inicio
		vMontante <- ((vMontante * vJuros) / 100) + vMontante
		vMontante <- arredonda(vMontante)
		escreva "O montante do ", vContador, "° mes é: ", vMontante	
	fim
	escreva "O montante final é:", vMontante
fim_algoritmo
