// arrays

const animals = [
    'Lions',
    'Monkey',
    {
        name:'Cat',
        age: 10
    }
]

// acessar valores dentro do array
console.log(animals[0])
console.log(animals.length) //Retorna o tamanho do array

console.log(animals[2]) // acessa o objeto criado dentro do array.
console.log(animals[2].name) // acessa o objeto criado dentro do array na posição 2 pela propriedade.


// OBS: Como boa prática de programação, geralmente é escolhido um determinado tipo para se trabalhar com arrays. 
// Exemplo: Se você usar objetos dentro do array, todas as posições deverão ser objects.