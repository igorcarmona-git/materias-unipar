algoritmo
	declare vValor, vJuros, vMeses, vResultado numerico
	escreva "Algoritmo para calcular montante de juros!!"
	escreva "------------------"
	escreva "Informe o valor do emprestimo!!"
	leia vValor
	escreva "Informe o % de juros mensal!!"
	leia vJuros
	escreva "Informe a quantidade de meses!!"
	leia vMeses
	vResultado <- ((vValor * (vJuros * vMeses)) / 100) + vValor
	//vResultado <- vResultado + vValor
	escreva vResultado	
fim_algoritmo
