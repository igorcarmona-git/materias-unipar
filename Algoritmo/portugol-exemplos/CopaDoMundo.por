algoritmo
 	declare vAno numerico
 		   vAnoDeCopa logico
 	escreva "Programa para vc saber se o ano informado é de copa do mundo!!"
	escreva "-----------------------"
	escreva "Este programa aceita somente anos maiores que 2010!!"
	escreva "-----------------------"
	escreva "Informe o ano desejado!!"
	leia vAno
	// usando condição composta
	//2010, 2014, 2018, 2022
	//se vAno = 2010 entao
	//	vAnoDeCopa <- verdadeiro
	//senao se vAno = 2014 entao
	//	vAnoDeCopa <- verdadeiro
	//senao se vAno = 2018 entao
	//	vAnoDeCopa <- verdadeiro
	//senao se vAno = 2022 entao
	//	vAnoDeCopa <- verdadeiro
	//senao
	//	vAnoDeCopa <- falso
	se vAno < 2010 ou vAno > 2022 entao
		escreva "Ano informado inválido"
	senao
	inicio
		//condição simples
		se vAno = 2010 ou vAno = 2014 ou vAno = 2018 ou vAno = 2022 entao
			vAnoDeCopa <- verdadeiro
		senao
			vAnoDeCopa <- falso
		
	
		se vAnoDeCopa = verdadeiro entao
			escreva vAno, " é ano de copa!!"
		senao
			escreva vAno, " não é ano de copa!!"
	fim
fim_algoritmo
