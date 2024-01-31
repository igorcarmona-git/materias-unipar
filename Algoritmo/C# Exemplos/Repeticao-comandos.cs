using System;

namespace ComandosDeRepeticao
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("For");
            //para vNumero <- 1 ate 10 faca
            int a;
            //divido em 3 partes
            //1° Inicialização da variavel
            //2° Definição da execução do laço
            //3° Incremento do contador
            for(a=1;a<=10;a++)
            {
                Console.WriteLine(a);
            }

            Console.WriteLine();
            Console.WriteLine("While");
            int b= 1;
            //enquanto..faca
            while(b <= 10)
            {
                Console.WriteLine(b);
                b++;
            }

            Console.WriteLine();
            Console.WriteLine("Do");
            //repita ate
            int c = 1;
            do
            {
                Console.WriteLine(c);
                c++;
            } while (c <= 10);

            Console.ReadLine();
        }
    }
}
