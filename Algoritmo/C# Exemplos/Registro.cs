using System;

namespace Aula
{
    class Variaveis
    {
        static void Main(string[] args)
        {
            //declare vNumero numerico
            //        vString literal
            //        vLogico logico
            // vNumero <- 10
            int vNumero = 10;
            int vNumero2;
            string vString;
            bool vLogico = true;

            //Escreva
            //Leia vString
            Console.WriteLine("Ola mundo!!");
            Console.WriteLine(vNumero);
            vString = Console.ReadLine();
            Console.WriteLine("O numero digitado foi: " + vString) ;
            Console.WriteLine();
            Console.WriteLine("Digite um numero:");
            vNumero = int.Parse(Console.ReadLine());


            //se, senao, senao se, entao
            //se vNumero > 10 entao
            //inicio
            //  asdfasdf
            //   asdfasdfsadf
            //fim
            //Comandos condicionais
            if (vNumero > 10)
            {
                Console.WriteLine("O numero é maior que 10");
            }
            else if (vNumero > 5)
            {
                Console.WriteLine("O numero é maior que 5");
            }
            else
            {
                Console.WriteLine("O numero não é maior que 5");
            }


            //operadores logicos      
            // E, OU, NAO

            if(vNumero > 0 && vNumero < 10)
            {
                Console.WriteLine("O numero positivo não é maior que 10");
            }

            if(vNumero < 18 || vNumero > 65)
            {
                Console.WriteLine("Vc é estudante ou idoso");
            }

            bool vSim = false;

            if(!vSim)
            {
                Console.WriteLine("Variavel é false");
            }

            Console.ReadLine();

        }
    }
}
