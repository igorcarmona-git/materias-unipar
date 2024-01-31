algoritmo
	declare vSalario, vValorAliquota numerico
		   vNome literal
	escreva "----------------------------------------------------------------------"
	escreva "|Algoritmo para classificação de alíquota de imposto de renda   "
	escreva "----------------------------------------------------------------------"
	escreva "Por favor, informe o seu nome:"
	leia vNome
	//de 0,00 até 1.903,98	isento	0,00
	//de 1.903,99 até 2.826,65	7,50%	142,80
	//de 2.826,66 até 3.751,05	15,00%	354,80
	//de 3.751,06 até 4.664,68	22,50%	636,13
	//a partir de 4.664,68	27,50%	869,36
	//operadores relacionais 
	//  = igual
	//  > maior que
	//  >= maior igual
	//  < menor que
	//  <= menor igual
	//  != diferente
	
	//operadores condicionais
	// Se 
	// Senão
	//operadores logicos
	// E 
	// OU 
	
	escreva "Por favor, informe o seu salário:"
	leia vSalario
	se vSalario <= 1903.98 entao
	inicio
		escreva "Olá ", vNome, " voçê está isento do imposto de renda!!"
	fim
	se vSalario > 1903.98 e vSalario <= 2826.65 entao
	inicio
		escreva "Olá ", vNome, " sua aliquota sera de 7,50%."
		vValorAliquota <- (vSalario * 7.5) / 100
		escreva "Será descontado do seu salario R$ ", vValorAliquota
	fim
	se vSalario > 2826.66 e vSalario <= 3751.05 entao
	inicio
		escreva "Olá ", vNome, " sua aliquota sera de 15,00%."
		vValorAliquota <- (vSalario * 15.0) / 100
		escreva "Será descontado do seu salario R$ ", vValorAliquota
	fim
	se vSalario > 3751.06 e vSalario <= 4664.68 entao
	inicio
		escreva "Olá ", vNome, " sua aliquota sera de 22,50%."
		vValorAliquota <- (vSalario * 22.5) / 100
		escreva "Será descontado do seu salario R$ ", vValorAliquota
	fim
	senao
	inicio
		escreva "Olá ", vNome, " sua aliquota sera de 27,50%."
		vValorAliquota <- (vSalario * 27.5) / 100
		escreva "Será descontado do seu salario R$ ", vValorAliquota
	fim
	
fim_algoritmo
