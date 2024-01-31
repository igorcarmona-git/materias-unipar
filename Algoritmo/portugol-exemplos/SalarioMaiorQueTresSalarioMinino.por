algoritmo
	declare vSalario numerico
		   vMaiorQueTresSalario logico
	escreva "Informe seu soldo"
	leia vSalario
	se vSalario > 3636 entao
	inicio
		vMaiorQueTresSalario <- verdadeiro
	fim
	
	se vSalario <= 3636 entao
	inicio
		vMaiorQueTresSalario <- falso
	fim
	
	se vMaiorQueTresSalario entao
		escreva "Vc ganha um soldo maior que R$ 3636,00"
	senao
		escreva "Vc ganha um soldo menor ou igual a R$ 3636,00"
fim_algoritmo
