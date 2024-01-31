using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Registro
{
    class Program
    {
        struct Aluno
        {
            public int ra;
            public string nome;
            public int idade;
            public string endereco;
        }

        static void Main(string[] args)
        {
            Aluno aluno;
            aluno.ra = 10;
            aluno.nome = "Meu nome";
            aluno.idade = 18;

            Console.WriteLine(aluno.ra + " - " + aluno.nome + " - " + aluno.idade);
      

            Aluno[] Alunos = new Aluno[3];
            Alunos[0].ra = 20;
            Alunos[0].nome = "Meu nome alunos";
            Alunos[0].idade = 30;
            Alunos[0].endereco = "Meu endereço";
            Console.WriteLine(Alunos[0].ra + " - " + Alunos[0].nome + " - " + Alunos[0].idade);

            Console.ReadLine();
        }
    }
}
