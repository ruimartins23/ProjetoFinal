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
            ComentarioServices comServ = new ComentarioServices();
            Comentario coment = new Comentario();
            coment.ValorComentario = "Ola seu gay";
            coment.DataPost = DateTime.Now;
            coment.Utilizador.Id = 1;
            coment.Receita.Id = 3;
            comServ.Add(coment);

        }
    }
        

    
}
