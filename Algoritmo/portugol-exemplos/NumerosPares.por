//Algoritmo para calcular o números pares de 1 a 100.
algoritmo
	declare vContador numerico
	escreva "PARA .. ATE .. FACA"
	para vContador <- 1 ate 100 faca 
	inicio
		se resto(vContador, 2) = 0 entao
			escreva "O numero ", vContador, " é par!!" 
	fim
	escreva " "
	escreva "ENQUANTO .. FACA"
	vContador <- 1
	enquanto vContador <= 100 faca
	inicio
		se resto(vContador, 2) = 0 entao
			escreva "O numero ", vContador, " é par!!" 
		vContador <- vContador + 1
	fim
	escreva " "
	escreva "REPITA .. ATE"
	vContador <- 1
	repita
		se resto(vContador, 2) = 0 entao
			escreva "O numero ", vContador, " é par!!" 
		vContador <- vContador + 1
	ate vContador > 100
		
fim_algoritmo
