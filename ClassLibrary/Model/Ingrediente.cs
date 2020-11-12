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
        public decimal Quantidade { get; set; }

        public string NomeIng { get; set; }

        public Ingrediente()
        {
        }

        public Ingrediente(int id, decimal quantidade, string nomeIng)
        {
            Id = id;
            Quantidade = quantidade;
            NomeIng = nomeIng;
        }
    }
}
