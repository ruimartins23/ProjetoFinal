using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class Receita
    {

        public int Id { get; set; }
        public string Nome { get; set; }

        public string Descricao { get; set; }

        public int Duracao { get; set; }

        public string Dificuldade { get; set; }

        public int Rating { get; set; }

        public string Categoria { get; set; }

        public string Comentário { get; set; }

        public List<Ingrediente> Ingredientes { get; set; }

        public Receita(int id, string nome, string descricao, int duracao, string dificuldade, int rating, string categoria)
        {
            Id = id;
            Nome = nome;
            Descricao = descricao;
            Duracao = duracao;
            Dificuldade = dificuldade;
            Rating = rating;
            Categoria = categoria;
        }

        public Receita()
        {

        }
    }
}
