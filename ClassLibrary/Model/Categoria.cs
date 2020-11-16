using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary.Model
{
    public class Categoria
    {
        public int Id { get; set; }
        public string ValorCategoria { get; set; }

        public Categoria(int id, string valorCategoria)
        {
            Id = id;
            ValorCategoria = valorCategoria;
        }

        public Categoria()
        {
        }
    }
}
