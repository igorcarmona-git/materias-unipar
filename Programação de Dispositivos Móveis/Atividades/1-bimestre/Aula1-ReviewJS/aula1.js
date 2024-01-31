// 1. Crie um alerta com uma mensagem de boas-vindas qualquer.
// 2. Crie três variáveis. Uma deve armazenar seu nome, outra a sua idade e a última o seu telefone.
// 3. Crie um array e armazene 4 notas dentro dele.
// 4. Crie uma variável booleana que contenha uma operação que resulte em um valor “false”.
// 5. Crie um array que contenha 4 nomes de cidades.
// 6. Crie uma variável de valor constante com o seu cpf.
// 7. Crie uma variável qualquer e imprima o seu valor no console.
// 8. Crie um texto utilizando h1 com a seguinte frase “Sem alterar” e logo em seguida altere essa frase utilizando o javascript para “alterada”.
// 9. Crie um alerta com a seguinte frase “Você clicou no botão”. Esse alerta só deve ser executado se o usuário clicar em um botão com a frase “Não click”.

console.log('Review de JS - Aula 1')

//funcoes
function bemvindo(){
    alert("Seja bem-vindo!")
}

function alterarFrase(){
    let frase_html = "Alterada!"
    let frase = document.querySelector('h1')
    frase.textContent = frase_html
}

function criarAlerta(){ 
    alert("Voce clicou no botao!")
}

//declaração de variaveis
let nome = "Igor"
let idade = 23
let telefone = '4499976-5469'
const cpf = '118.004.319-70'
isFalse = false 

//listas
notas = [100, 50, 25, 0]
cidades = ['Cianorte', 'Maringa', 'Curitiba', 'Jussara']

//Imprimir no console
var qualquerCoisa = 'Qualquer valor!'
console.log(qualquerCoisa)

var botao_html = document.querySelector("#nao-clicar");   
botao_html.onclick = criarAlerta

bemvindo()
alterarFrase()


