﻿using ClassLibrary.Model;
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

        public string Duracao { get; set; }

        public bool Validado { get; set; }


        public enum Dificuldade : byte
        {
            Fácil = 0,
            Médio = 1,
            Díficl = 2
        }

        public enum Rating : byte
        {
            UmaEstrela = 1,
            DuasEstrelas = 2,
            TresEstrelas = 3,
            QuatroEstrelas = 4,
            CincoEstrelas = 5
        }

        public string Categoria { get; set; }

        public int Utilizador_id { get; set; }

        public List<Ingrediente> Ingredientes { get; set; }

        public List<Comentario> Comentarios { get; set; }

        public Comentario Comentario { get; set; }

        public Rating _rating;
        public Dificuldade _dificuldade;


        public Receita(int id, string nome, string descricao, string duracao, bool validado, Rating rating, Dificuldade dificuldade)
        {

            Id = id;
            Nome = nome;
            Validado = validado;
            Descricao = descricao;
            Duracao = duracao;
            Validado = validado;
            this._rating = rating;
            this._dificuldade = dificuldade;
            
        }

        public Receita()
        {
        }
    }
}
