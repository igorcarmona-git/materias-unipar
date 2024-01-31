algoritmo
	declare vNotaAluno numerico
		vNomeAluno literal
		vAprovado logico
	escreva "Bem vindo ao sistema oraculo, o sistema que adivinha se vc esta aprovado ou não"
	escreva "Para começar preciso saber o seu nome"
	leia vNomeAluno
	escreva "Agora preciso saber a sua nota"
	leia vNotaAluno
	vAprovado <- falso
	se vNotaAluno >= 70 entao	
		vAprovado <- verdadeiro
	se vAprovado entao
		escreva "Olha vi aqui que vc esta aprovado, parabens!!"
	senao
		escreva "Olha infelizmente as noticias não são boas, vc esta reprovado"
		
fim_algoritmo
