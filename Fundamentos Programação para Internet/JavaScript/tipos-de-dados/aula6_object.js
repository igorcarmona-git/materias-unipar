/*
Object
    
    - Objeto
    - Propriedades / Atributos
    - Funcionalidades / Métodos

    { propriedade: "valor"}

    O tipo de dado Object é estrutural, contendo atributos, ou propriedades, e métodos, ou funcionalidades. 
    Um objeto é denotado com os caracteres { }.

*/

console.log({
    name: "Igor",
    idade: 22,
    andar: function() // É um método/funcionalidade, porque está dentro de um objeto.
    {
        console.log("andar")
    }
})