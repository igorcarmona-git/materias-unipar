//Algoritmo que receba um número e mostre sua respectiva tabuada.
algoritmo
 	declare vNumero, vResultado, vContador numerico
 	escreva "Informe o número para a tabuada:"
	leia vNumero
	para vContador <- 1 ate 10 faca
	inicio
		vResultado <- vNumero * vContador
		escreva vNumero, " X ", vContador, " = ", vResultado 
	fim
	
fim_algoritmo
//5 x 1 = 5 
//5 x 2 = 10
//5 x 3 = 15
//5 x 4 = 20
//.
//.
//.
//.
//5 x 10 = 50
