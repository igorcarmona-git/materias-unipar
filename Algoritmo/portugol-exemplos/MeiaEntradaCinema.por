algoritmo
	declare vNome literal
		   vIdade, vValorIngresso numerico
	vValorIngresso <- 30
	escreva "Cine Dino - compra aqui o seu ingresso"
	escreva "Informe seu nome:"
	leia vNome
	escreva "Informe sua idade: "
	leia vIdade
	se vIdade <= 12 ou vIdade >= 65 entao
	inicio
		vValorIngresso <- vValorIngresso / 2		
	fim
	escreva "Olá ", vNome, " voce irá pagar ", vValorIngresso
fim_algoritmo
