//Algoritmo que receba um número e mostre sua respectiva tabuada.
algoritmo
 	declare vNumero, vResultado, vContador numerico
 	escreva "Informe o número para a tabuada:"
	leia vNumero
	vContador <- 1
	repita
		vResultado <- vNumero * vContador
		escreva vNumero, " X ", vContador, " = ", vResultado 
		vContador <- vContador + 1
	ate vContador > 10
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
