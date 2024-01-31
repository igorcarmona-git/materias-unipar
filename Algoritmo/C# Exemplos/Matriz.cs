using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Matriz
{
    class Program
    {
        static void Main(string[] args)
        {
            int coluna = 10;
            int[,] vMatriz = new int[5, coluna];

            vMatriz[0, 0] = 10;
            Console.WriteLine(vMatriz[0, 0]);

            Console.ReadLine();

        }
    }
}
