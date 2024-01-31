// function scope

let subject = 'create video'

function createThink(subject){
    // subject aqui é totalmente diferente do subject de fora.
    subject = 'study'
    return subject
}

// função sem retorno, é undefined

console.log(createThink())
console.log(subject)

// Você não sobre-escreve a variável porque você ta passando o 'subject' como parâmetro na função, 'subject' passa a ser uma variável local, só funciona dentro da função, na qual, você retorna esse valor para a chamada da função (createThink()).

function createThinkk(){
    subject = 'studying is too good!'
    return subject
}

console.log(createThinkk())
console.log(subject)

// Quando você chama a função sem parâmetro, voce está alterando o valor da variável.