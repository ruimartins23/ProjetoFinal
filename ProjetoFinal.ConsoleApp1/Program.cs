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
            Ingrediente ing = new Ingrediente();
            IngredientesServices ingServ = new IngredientesServices();
            Console.WriteLine("Insira o nome do Ingrediente");
            ing.Produto = Console.ReadLine();
            Console.WriteLine("Insira a unidade do ingrediente");
            ing.Unidade = Console.ReadLine();
            ingServ.Add(ing);
        }
    }
        

    
}
