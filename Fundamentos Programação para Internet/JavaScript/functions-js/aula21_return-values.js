// Não importa qual o nome que são passados nos parâmetros, os valores nos argumentos são atribuidos para os parametros.

// OBS: Sempre quando for criar funções, criar constantes para não poder mudar os seus valores.
const sum = function(n1, n2){
    let result = n1 + n2
    return result 
    //Quando não colocamos um 'return', a função sempre retorna alguma coisa e vai ser 'undefined'
}

let number1 = 30
let number2 = 40

// console.log(`A soma é: ${result}`) --> Se for colocar antes da chamada da função, não reconhece o 'result' e causa erro de referencia.

totalSum = sum(number1, number2) //argumentos

console.log(`o número 1 é ${number1}`)
console.log(`o número 2 é ${number2}`)
console.log(`A soma é: ${totalSum}`)

// console.log(`A soma é: ${result}`) ---> 'result' foi criada dentro da função e pode ser usada fora da função quando não definimos ela como 'let', isso pode causar problemas futuramente a sua aplicação.