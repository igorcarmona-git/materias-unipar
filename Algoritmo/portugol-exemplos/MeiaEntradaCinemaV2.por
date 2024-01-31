algoritmo
	declare vNome, vEstudanteLiteral literal
		   vIdade, vValorIngresso numerico
		   vEstudante logico
		   
	vValorIngresso <- 30
	escreva "Cine Dino - compra aqui o seu ingresso"
	escreva "Informe seu nome:"
	leia vNome
	escreva "Informe sua idade: "
	leia vIdade
	//escreva "Voce é Estudante? Responda verdadeiro para sim e falso para não."
	//leia vEstudante
	escreva "Voce é Estudante? Responda sim ou nao."
	leia vEstudanteLiteral
	se vEstudanteLiteral <> "sim" ou vEstudanteLiteral <> "nao" entao
	inicio
		escreva "Voce digitou ", vEstudanteLiteral, ", deve ser digitado apenas sim ou nao."
		escreva "Informe novamente"
		leia vEstudanteLiteral		
	fim
	
	//se vIdade <= 12 ou vIdade >= 65 ou vEstudante = verdadeiro entao
	se vIdade <= 12 ou vIdade >= 65 ou vEstudanteLiteral = "sim" entao
	inicio
		vValorIngresso <- vValorIngresso / 2		
	fim
	escreva "Olá ", vNome, " voce irá pagar ", vValorIngresso
	
fim_algoritmo
