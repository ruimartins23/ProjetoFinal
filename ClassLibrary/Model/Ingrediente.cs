using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class Ingrediente
    {

        public int Id { get; set; }

        public string Unidade { get; set; }

        public string Produto { get; set; }

        public Ingrediente(int id, string unidade, string produto)
        {
            Id = id;
            Unidade = unidade;
            Produto = produto;
        }

        public Ingrediente()
        {
        }
    }
}
