/*
Scope

    Escopo determina a visibilidade de alguma variável no JS.
*/

//Block statement --> O bloco, também criará um novo escopo. Chamamos de "block-scoped"

// Vamos iniciar um bloco.
{
    // Aqui dentro é um bloco e posso colocar qualquer código.
    let n1 = 0
    console.log(n1)
}
// Aqui fechamos o bloco.

// var é global e, também local.
/*
    Ao executar temos: 'undefined'. Isso acontece porque debaixo dos panos no JS, ocorre "hoistings/elevações",
    o JS faz a leitura cima pra baixo, identifica o 'x' e procura, achou, pega a declaração e taca pra cima, depois coloca o valor
    nele no bloco por 'var' ser global.
*/
console.log("existe x antes do bloco? ", x)

{
    var x = 0
}

console.log("Existe x depois do bloco? ", x)