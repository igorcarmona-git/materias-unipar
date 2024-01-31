// Usando por elemento classe, tem que pegar a posição do elemento por retornar uma lista.
// const botao_bemvindo = (welcome_text) => {
//     let text = document.getElementsByClassName('welcome_text')
//     return text[0].innerHTML = 'Essa é a página da atividade 2 de JavaScript!'
// }

// Usando o 'this' como exemplo, ele altera no próprio botão o text.
// const botao_bemvindo = () => {
//     return 'Essa é a página da atividade 2 de JavaScript!'
// }

// Usando por elemento ID
const welcomeButton = () => {
    // innerHTML tem risco a segurança porque dentro dele aceita códigos HTML, já o textContent, só aceita text. 
    return document.getElementById('welcome_text').textContent = "I'm glad for asking, I'm fine, thank you!";
}

function HideButton(element){
    let button = document.getElementById(element).style.display='none'
    return button
}

function ViewButton(element){
    let button = document.getElementById(element).style.display='block'
    return button
}

function ChangeImageButton(element){
    let button = document.getElementById(element).src=src_random_images
    return button
} 

function ChooseWrite(element){
    var text_name = prompt('Qual é o seu nome?')
    let choose_write = document.getElementById(element).textContent = `${text_name}`
    return choose_write
}

function VerifyHour(element){
    let text
    let hour = new Date().getHours()

    if(hour <= 12){
        text = `Good Morning!`
    }else if(hour <= 18){
        text = `Good Afternoon! `
    }else{
        text = `Good Evening!`
    }

    return document.getElementById(element).textContent = text
}

var src_random_images = 'https://source.unsplash.com/random'
