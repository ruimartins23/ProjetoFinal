using ClassLibrary;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Data.Repositories
{
    public class UtilizadorRepository
    {

        private static int _colId = 0;
        private static int _colNome = 1;
        private static int _colEmail = 2;
        private static int _colPw = 3;
        private static int _colBirthDate = 4;

        public List<Utilizador> GetAll()
        {
            List<Utilizador> Utilizadores = new List<Utilizador>();

            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = "SELECT * FROM Utilizador";

            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                int id = dr.GetInt32(_colId);
                string nome = dr.GetString(_colNome);
                string email = dr.GetString(_colEmail);
                string password = dr.GetString(_colPw);
                DateTime birthDate = dr.GetDateTime(_colBirthDate);

                Utilizador utilizador = new Utilizador(); //CONSTRUTOR COM MAIS ARGUMENTOS
                Utilizadores.Add(utilizador);
            }

            return Utilizadores;
        }

        public Utilizador GetById(int id)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                string query = $"SELECT * FROM Ingrediente WHERE Ingrediente_id = {id} ";

                SqlCommand cmd = new SqlCommand(query, conn);

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    Utilizador utilizador = new Utilizador();
                    {


                    }
                    return utilizador;

                }


                throw new Exception("Nao existe nenhum ingrediente com o ID " + id);

            }
        }
    }

        public void Add(Utilizador utilizador)
        {

        }

        public void Update(Utilizador utilizador)
        {

        }

        public void Remove(int Id)
        {

        }
    }
}
