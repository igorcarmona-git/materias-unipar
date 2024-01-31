algoritmo
	declare opcao, contador, codigo numerico resposta, nome literal
	alunos[10] registro (nome, endereco literal codigo, idade, documento numerico)
	
	repita
		limpar_tela()
		escreva " --Sistema integrado de alunos --"
		escreva "1 - Cadastro de aluno"
		escreva "2 - Consulta de alunos"
		escreva "3 - Editar aluno"
		escreva "4 - Excluir aluno"
		escreva "0 - Sair"
	
		leia opcao
		
		se opcao = 1 entao
		inicio
			escreva "-- Cadastro de Aluno --"
			codigo <- 0
			para contador <- 1 ate 10 faca
			inicio
				se alunos[contador].codigo > 0 entao
					codigo <- alunos[contador].codigo				
			fim
			
			contador <- codigo + 1
			resposta <- "S"
			
			enquanto contador <= 10 e (resposta = "s" ou resposta = "S") faca
			inicio
				escreva "Digite o nome do aluno:"
				leia alunos[contador].nome
				escreva "Digite o endereco do aluno:"
				leia alunos[contador].endereco
				escreva "Digite a idade do aluno:"
				leia alunos[contador].idade
				escreva "Digite o documento do aluno:"
				leia alunos[contador].documento
				
				alunos[contador].codigo <- contador
				
				contador <- contador + 1
				
				escreva "Deseja cadastrar um novo aluno? (S = SIM, N = NÃO)"
				leia resposta
			fim			
		fim
		se opcao = 2 entao
		inicio
			escreva "-- Consulta de Aluno --"
			para contador <- 1 ate 10 faca
			inicio
				se alunos[contador].codigo > 0 entao
				inicio
					escreva "Código:", alunos[contador].codigo, " Nome: ", alunos[contador].nome, " - Endereço: ", alunos[contador].endereco,
						" - Idade: ", alunos[contador].idade, " - Documento: ", alunos[contador].documento
				fim				
			fim
			
			leia resposta
		fim
		se opcao = 3 entao
		inicio
			escreva "-- Editar Aluno --"
			escreva "Digite o código do aluno a ser alterado: "
			leia codigo
			para contador <- 1 ate 10 faca
			inicio
				se alunos[contador].codigo = codigo entao
				inicio
					escreva "Código:", alunos[contador].codigo, " Nome: ", alunos[contador].nome, " - Endereço: ", alunos[contador].endereco,
						" - Idade: ", alunos[contador].idade, " - Documento: ", alunos[contador].documento
					escreva " "
					escreva "Deseja alterar o endereço?  (S = SIM, N = NÃO)"
					leia resposta
					se resposta = "s" ou resposta = "S" entao
					inicio
						escreva "Digite o novo endereço:"
						leia alunos[contador].endereco
					fim
					escreva "Deseja alterar a idade?  (S = SIM, N = NÃO)"
					leia resposta
					se resposta = "s" ou resposta = "S" entao
					inicio
						escreva "Digite a nova idade: "
						leia alunos[contador].idade
					fim
				fim				
			fim			
		fim
		se opcao = 4 entao
		inicio
			escreva "-- Excluir Aluno --"
			escreva "Digite o nome do aluno a ser excluido: "
			leia nome
			para contador <- 1 ate 10 faca
			inicio
				se alunos[contador].nome = nome entao
				inicio
					alunos[contador].codigo <- 0
					alunos[contador].nome <- " "
					alunos[contador].endereco <- " "
					alunos[contador].idade <- 0
					alunos[contador].documento <- 0					
				fim				
			fim			
		fim
		se opcao > 4 entao
			escreva "Opção inválida, digite corretamente!!"
			leia resposta
		
	ate opcao = 0
fim_algoritmo
