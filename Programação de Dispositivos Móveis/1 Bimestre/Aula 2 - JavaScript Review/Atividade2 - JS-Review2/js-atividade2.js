// Usando por elemento classe, tem que pegar a posição do elemento por retornar uma lista.
// const botao_bemvindo = (welcome_text) => {
//     let texto = document.getElementsByClassName('welcome_text')
//     return texto[0].innerHTML = 'Essa é a página da atividade 2 de JavaScript!'
// }

// Usando por elemento ID
const botao_bemvindo = (welcome_text) => {
    // innerHTML tem risco a segurança porque dentro dele aceita códigos HTML, já o textContent, só aceita texto. 
    return document.getElementById(welcome_text).textContent = 'Essa é a página da atividade 2 de JavaScript!';
}

// Usando o 'this' como exemplo, ele altera no próprio botão o texto.
// const botao_bemvindo = () => {
//     return 'Essa é a página da atividade 2 de JavaScript!'
// }
