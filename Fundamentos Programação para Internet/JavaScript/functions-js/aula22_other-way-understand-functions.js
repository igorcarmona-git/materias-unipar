// Função é um liquidificador

function fazerSuco(fruta1, fruta2){
    let frase = (`Suco de ${fruta1} e ${fruta2} virou um suco de: `) // 'let' para a variável não existir em outro local além da função.
    return frase + fruta1 + fruta2
    
    // Se retorna algo, alguém precisa receber.
}

const copo = fazerSuco('banana', 'maçã')
console.log(copo)
