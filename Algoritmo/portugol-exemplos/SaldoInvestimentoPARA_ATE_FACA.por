//Algoritmo para calcular o valor de saldo de um investimento após 
//12 meses com saldo inicial de R$ 100,00 e juros de 1% ao mês.
algoritmo
	declare vPrazo, vJuros, vMontante, vContador numerico 
	vPrazo <- 12
	vJuros <- 1
	vMontante <- 100
	para vContador <- 1 ate vPrazo faca
	inicio
		vMontante <- ((vMontante * vJuros) / 100) + vMontante
	fim
	escreva vMontante
	
fim_algoritmo
//100
//1° mes = 100 + 1 = 101
//2° mes = 101 + 1,01 = 102,01
//.
//.
//.
//12 mes = 150
