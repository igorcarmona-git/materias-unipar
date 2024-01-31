algoritmo
	declare vCapital, vJuros, vTempo, vMontante numerico
//capital
//juros
//tempo
//montante
	vCapital <- 100
	vJuros <- 1
	vTempo <- 6
	vMontante <- vCapital
	
	vMontante <- ((vMontante * vJuros) / 100) + vMontante
	escreva "O montante do 1° mes é: ", vMontante
	vMontante <- ((vMontante * vJuros) / 100) + vMontante
	escreva "O montante do 2° mes é: ", vMontante
	vMontante <- ((vMontante * vJuros) / 100) + vMontante
	escreva "O montante do 3° mes é: ", vMontante
	vMontante <- ((vMontante * vJuros) / 100) + vMontante
	escreva "O montante do 4° mes é: ", vMontante
	vMontante <- ((vMontante * vJuros) / 100) + vMontante
	escreva "O montante do 5° mes é: ", vMontante
	vMontante <- ((vMontante * vJuros) / 100) + vMontante
	escreva "O montante do 6° mes é: ", vMontante
	escreva "O montante final é:", vMontante
fim_algoritmo
