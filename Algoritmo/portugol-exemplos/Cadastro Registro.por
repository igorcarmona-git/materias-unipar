algoritmo
	declare aluno[10] registro (nome literal idade, cpf numerico ativo logico)
		   i, idade, cpf numerico
		   x, y, nome literal
		   ativo, z logico
		
	
	escreva "Cadastro de aluno"
	escreva " "
	
	//x <- "sim"
	z <- verdadeiro
	i <- 1
		
	repita
				
		Escreva "informe o nome do aluno "
		Escreva " "
		leia aluno[i].nome
		Escreva " "
		escreva "informe a idade do aluno "
		escreva " "
		leia aluno[i].idade
		escreva "informe o numero do cpf do aluno "
		escreva " "
		leia aluno[i].cpf
		escreva "o aluno está ativo? "
		leia aluno[i].ativo
		
		i <- i + 1
		
		escreva "Deseja realizar outro cadastro? "
		escreva " "
		leia x
			
		se (x = "sim") ou (x = "Sim") ou (x = "s") ou (x = "S") entao
		inicio
			z <- verdadeiro
		fim
		senao
		inicio
			z <- falso
		fim
				
		ate z = falso
		
	fim
		
fim_algoritmo
