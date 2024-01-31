algoritmo
	declare lista_codigo[5], lista_quantidade[5], codigo, contador, totalItem, totalGeral numerico
		   resposta literal
	resposta <- "S"
	contador <- 1
	enquanto (resposta = "S" ou resposta = "s") e contador <= 5 faca
	inicio
		escreva "Informe o item desejado"
		leia lista_codigo[contador]
	
		escreva "Informe a quantidade desejada"
		leia lista_quantidade[contador]
		
		escreva "Deseja pedir mais itens?"
		leia resposta
		contador <- contador + 1
	fim
	escreva "--------------------"
	escreva "Itens solicitados"
	contador <- 1
	totalGeral <- 0
	enquanto contador <= 5 faca
	inicio
		totalItem <- 0
		se lista_codigo[contador] = 100 entao
		inicio
			totalItem <- lista_quantidade[contador] * 10
			totalGeral <- totalGeral + totalItem
			escreva "Item ", lista_codigo[contador], " Quantidade ", lista_quantidade[contador], " Total ", totalItem			
		fim
		se lista_codigo[contador] = 101 entao
		inicio
			totalItem <- lista_quantidade[contador] * 11
			totalGeral <- totalGeral + totalItem
			escreva "Item ", lista_codigo[contador], " Quantidade ", lista_quantidade[contador], " Total ", totalItem				
		fim	
		se lista_codigo[contador] = 102 entao
		inicio
			totalItem <- lista_quantidade[contador] * 12
			totalGeral <- totalGeral + totalItem
			escreva "Item ", lista_codigo[contador], " Quantidade ", lista_quantidade[contador], " Total ", totalItem				
		fim	
		se lista_codigo[contador] = 103 entao
		inicio
			totalItem <- lista_quantidade[contador] * 13
			totalGeral <- totalGeral + totalItem
			escreva "Item ", lista_codigo[contador], " Quantidade ", lista_quantidade[contador], " Total ", totalItem			
		fim
		se lista_codigo[contador] = 104 entao
		inicio
			totalItem <- lista_quantidade[contador] * 14
			totalGeral <- totalGeral + totalItem
			escreva "Item ", lista_codigo[contador], " Quantidade ", lista_quantidade[contador], " Total ", totalItem				
		fim	
		se lista_codigo[contador] = 105 entao
		inicio
			totalItem <- lista_quantidade[contador] * 3
			totalGeral <- totalGeral + totalItem
			escreva "Item ", lista_codigo[contador], " Quantidade ", lista_quantidade[contador], " Total ", totalItem				
		fim
		contador <- contador + 1
	fim
	
se totalGeral > 0 entao
		escreva "Total geral = ", totalGeral
fim_algoritmo
