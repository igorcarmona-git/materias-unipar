using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modularizacao
{
    class Program
    {
        static void Main(string[] args)
        {
            EscrevaNaTela();
            EscreverNaTelaComParametro("Mensagem do parametro");
            int mediaGlobal = Media();
            EscreverNaTelaComParametro(mediaGlobal.ToString());
        }
        #region SubRotina
        static void EscrevaNaTela()
        {
            Console.WriteLine("Ola mundo");
            Console.ReadLine();
        }

        static void EscreverNaTelaComParametro(string mensagem)
        {
            Console.WriteLine(mensagem);
            Console.ReadLine();
        }

        static int Media()
        {
            int a = 10;
            int b = 20;
            int media;
            media = (a + b) / 2;

            return media;
        }
        #endregion
    }
}
