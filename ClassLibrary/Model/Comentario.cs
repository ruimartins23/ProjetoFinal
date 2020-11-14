using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary.Model
{
    public class Comentario
    {
        public int Id { get; set; }

        public string ValorComentario { get; set; }

        public Utilizador Utilizador { get; set; }

        public Receita Receita { get; set; }

        public DateTime DataPost { get; set; }
    }
}
