using ClassLibrary.Model;
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
        private bool isAdmin;

        public Utilizador()
        {
        }

        public Utilizador(int id, string nome, string email, DateTime birthdate, bool isAdmin)
        {
            Id = id;
            Nome = nome;
            Email = email;
            BirthDate = birthdate;
            this.isAdmin = isAdmin;
        }

        public int Id { get; set; }

        public string Nome { get; set; }

        public string Email { get; set; }

        public string Password { get; set; }

        public DateTime BirthDate { get; set; }

        public bool Registado { get; set; }

        public bool Admin { get; set; }

        public Account Account { get; set; }

        public List<Receita> ReceitasFavoritas { get; set; }


    }
}
