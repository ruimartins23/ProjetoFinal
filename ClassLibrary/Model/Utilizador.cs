using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class Utilizador 
    {

        public int Id { get; set; }
        public string Nome { get; set; }

        public string Email { get; set; }

        private string Password { get; set; }

        public DateTime BirthDate { get; set; }

        public bool Registado { get; set; }

        public bool Admin { get; set; }

        public List<Receita> ReceitasFavoritas { get; set; }

        public Utilizador(int id, string nome, string email, string password, DateTime birthDate)
        {
            Id = id;
            Nome = nome;
            Email = email;
            Password = password;
            BirthDate = birthDate;
        }
    }
}
