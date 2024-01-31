//Exercícios de fixação referente aos Tipos de dados, variaveis, primeiros passos.

// 1- Declare uma variável de nome weight
let weight;

// 2- Que tipo de dado é a variavel acima?
console.log(typeof weight)

/*
    3- Declare uma variável e atribua valores para cada um dos dados:
        * name: string
        * age: Number (integer)
        * stars: Number (float)
        * isSubscribed: Boolean
*/

let name = "Igor";
let age = 22;
let stars = 4.5;
let isSubscribed = true;

/*
    4- A variável student abaixo é de que tipo de dados?
    4.1- Atribua a ela as mesmas propriedades e valores do exercício 3.
    4.2- Mostre no console a seguinte mensagem:
        <name> de idade <age> pesa <weight> kg.

        Atenção, substitua <name> <age> e <weight> pelos valores de cada propriedade do objeto.
*/

let student = {
    name: "Igor",
    age: 22,
    stars: 4.5,
    weight: 74,
    isSubscribed: true
}
console.log(typeof student)
console.log(student)

console.log(`${student.name} de idade ${student.age} pesa ${student.weight} kg.`)

/*
   5- Declare uma variável do tipo Array, de nome students e atribua a ela nenhum valor, ou seja, somente o array vazio
*/

let students = []

/*
   6- Reatribua valor para a variável acima, colocando dentro dela o objeto student da questão 4. (Não copiar e colar o objeto, mas usar o objeto criado e inserir ele no Array)
*/

students = [
   student
]
console.log(students)

/*
   7- Coloque no console o valor da posição zero do array acima
*/

console.log(students[0])

/*
   8- Crie um novo student e coloque na posição 1 do array students
*/

let fernando = {
    name: "Fernando",
    age: 19,
    stars: 3.1,
    weight: 68,
    isSubscribed: false
}
students[1] = fernando

//-----------------> outra forma <-----------------------------
// students = [
//     student,
//     fernando
// ]

console.log(students)

/*
   9- Sem rodar o código responda qual é a resposta do código abaixo e por que? Após sua resposta, rode o código e veja se você acertou.

   console.log(a)
   var a = 1

   Resposta: Será 'undefined', porque 'a' foi declarada globalmente. Por baixo dos panos, o JS vai pegar o 'a' e declarar no começo do código (hoistings). O console está antes do valor atribuído.
*/

console.log(a)
var a = 1

/*
   10- Trocando o var para let, o que vai acontecer?

   Resposta: Será um 'ReferenceError'. Porque a foi declarada localmente, não sofre hoistings, JS não vai identificar está variavel. 
*/
console.log(b)
let b = 1