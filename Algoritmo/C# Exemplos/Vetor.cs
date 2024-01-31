using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vetor
{
    class Program
    {
        static void Main(string[] args)
        {
            //vetor
            //declare vVetor[5] numerico

            int[] vNumero = new int[5];

            int[] vVetor = new int[5];
            int[] vVetor2 = new int[10]; 
 
            //quando utilizado posições, sempre deve começar a contar pelo 0;
            vVetor[0] = 1;
            vVetor[3] = 10;

            Console.WriteLine(vVetor[0]);

            Console.ReadLine();
        }
    }
}
