// 'const' e 'let' são locais e só funcionam no escopo onde foi criada.

//console.log("Existe y antes do bloco? ", y)
let y = 1
{
    //console.log("Existe y antes? ", y)
    let y = 0
    console.log("Existe y dentro do bloco? ", y)
    //OBS: 'let y = 0" esta variável só existe dentro desse bloco.
}

console.log("Existe y depois do bloco? ", y)

// -----------------------------------------------------------------------------------------------------------//

let x = 1
{
    //console.log("Existe x antes? ", x)
    x = 0
    console.log("Existe x dentro do bloco? ", x)
}

console.log("Existe x depois do bloco? ", x)

// OBS: Os dois passam a ser 0 porque, foi declarado o 'let x' fora, mas entrou no bloco trazendo esse de fora e mudando seu valor.
// Se necessário ele sobe quantos escopos forem precisos até encontrar onde foi declarado.
