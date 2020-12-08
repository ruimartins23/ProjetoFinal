using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassLibrary;
using ClassLibrary.Model;
using ProjetoFinal.Services.Services;

namespace ProjetoFinal.ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            IngredientesServices ingServ = new IngredientesServices();
            foreach (var item in ingServ.GetAll())
            {
                Console.WriteLine(item.Id);
            }

        }
    }
        

    
}
