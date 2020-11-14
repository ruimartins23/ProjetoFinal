using ClassLibrary.Model;
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

        public TimeSpan Duracao { get; set; }

        public bool Validado { get; set; }


        public enum Dificuldade
        {
            Fácil = 0,
            Médio = 1,
            Díficl = 2
        }

        public enum Rating
        {
            UmaEstrela = 1,
            DuasEstrelas = 2,
            TresEstrelas = 3,
            QuatroEstrelas = 4,
            CincoEstrelas = 5
        }

        public Categoria Categoria { get; set; }

        public Utilizador Utilizador { get; set; }

        public List<Ingrediente> Ingredientes { get; set; }

        public List<Comentario> Comentarios { get; set; }

        public Comentario Comentario { get; set; }

    }
}
