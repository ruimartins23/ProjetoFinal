using ClassLibrary;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Data.Repositories
{
    public class UtilizadorRepository
    {
        public List<Utilizador> GetAll()
        {
            List<Utilizador> temp = new List<Utilizador>();

            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetAllUtilizador";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    int id = dr.GetInt32(0);
                    string nome = dr.GetString(1);
                    string email = dr.GetString(2);
                    DateTime birthdate = dr.GetDateTime(4);
                    bool isAdmin = dr.GetBoolean(6);


                    Utilizador Utilizador = new Utilizador(id, nome, email, birthdate, isAdmin);
                    temp.Add(Utilizador);

                }

                return temp;

            }
        }

        public Utilizador GetById(int id)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetUtilizadorById";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    Utilizador utilizador = new Utilizador();
                    {
                        utilizador.Id = dr.GetInt32(0);
                        utilizador.Nome = dr.GetString(1);
                        utilizador.Password = dr.GetString(2);
                        utilizador.BirthDate = dr.GetDateTime(3);

                    }
                    return utilizador;

                }


                throw new Exception("Nao existe nenhum Utilizador com o ID " + id);

            }
        }
    

        public void Add(Utilizador utilizador)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
                string query = $"INSERT INTO Utilizador (NomeUser, Email, Password, BirthDate, IsRegisted, IsAdmin) VALUES ({utilizador.Nome}, {utilizador.Email}, {utilizador.Password}, {utilizador.BirthDate}, {utilizador.Registado}, {utilizador.Admin})";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@NomeUser", utilizador.Nome);
                cmd.Parameters.AddWithValue("@Email", utilizador.Email);
                cmd.Parameters.AddWithValue("@Password", utilizador.Password);
                cmd.Parameters.AddWithValue("@Birthdate", utilizador.BirthDate);
                cmd.Parameters.AddWithValue("@IsRegisted", utilizador.Registado);
                cmd.Parameters.AddWithValue("@IsAdmin", utilizador.Admin);

                conn.Open();

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. O utilizador não foi adicionado.");
                }



            }
        }

        public void Update(Utilizador utilizador)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
                string query = $"UPDATE Utilizador SET NomeUser = {utilizador.Nome}, Email = {utilizador.Email}, Password = {utilizador.Password}, BirthDate = {utilizador.BirthDate}, IsRegisted = {utilizador.Registado}, IsAdmin = {utilizador.Admin};";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@NomeUser", utilizador.Nome);
                cmd.Parameters.AddWithValue("@Email", utilizador.Email);
                cmd.Parameters.AddWithValue("@Password", utilizador.Password);
                cmd.Parameters.AddWithValue("@Birthdate", utilizador.BirthDate);
                cmd.Parameters.AddWithValue("@IsRegisted", utilizador.Registado);
                cmd.Parameters.AddWithValue("@IsAdmin", utilizador.Admin);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. O seu utilizador não foi atualizado.");
                }
            }
        }

        public void Remove(int id)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
                string query = $"DELETE FROM Utilizador WHERE Utilizador_id = {id}";

                SqlCommand cmd = new SqlCommand(query, conn);

                conn.Open();

                cmd.Parameters.AddWithValue("@Utilizador_id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. O seu utilizador não foi eliminado.");
                }
            }
        }
    }
}
