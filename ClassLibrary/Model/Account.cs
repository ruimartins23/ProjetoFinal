using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary.Model
{
    public class Account
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public Utilizador Utilizador { get; set; }

        public Account(int id, string username, string password) //add utilizador?
        {
            Id = id;
            Username = username;
            Password = password;
        }

        public Account()
        {
        }
    }
}
