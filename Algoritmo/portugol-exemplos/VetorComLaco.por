algoritmo
	declare vetor[5], contador numerico
	contador <- 1
	enquanto contador <= 5 faca
	inicio
		escreva "Digito o ", contador, "° valor: "
		leia vetor[contador] 
		escreva "O valor informado foi ", vetor[contador] 
		contador <- contador + 1
	fim
	escreva "-------------"
	para contador <- 1 ate 5 faca
	inicio
		escreva "Digito o ", contador, "° valor: "
		leia vetor[contador] 
		escreva "O valor informado foi ", vetor[contador] 		
	fim
	escreva "--------------------"
	contador <- 1
	repita
		escreva "Digito o ", contador, "° valor: "
		leia vetor[contador] 
		escreva "O valor informado foi ", vetor[contador] 
		contador <- contador + 1
	ate contador > 5
fim_algoritmo
