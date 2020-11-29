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
        string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

        public List<Utilizador> GetAll()
        {
            List<Utilizador> temp = new List<Utilizador>();


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

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spAddUser";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter NomeUser = new SqlParameter();
                NomeUser.Value = utilizador.Nome;
                NomeUser.ParameterName = "@NomeUser";
                NomeUser.SqlDbType = SqlDbType.NVarChar;
                NomeUser.Direction = ParameterDirection.Input;

                SqlParameter Email = new SqlParameter();
                Email.Value = utilizador.Email;
                Email.ParameterName = "@Email";
                Email.SqlDbType = SqlDbType.NVarChar;
                Email.Direction = ParameterDirection.Input;

                SqlParameter Password = new SqlParameter();
                Password.Value = utilizador.Password;
                Password.ParameterName = "@Password";
                Password.SqlDbType = SqlDbType.NVarChar;
                Password.Direction = ParameterDirection.Input;

                SqlParameter BirthDate = new SqlParameter();
                BirthDate.Value = utilizador.Password;
                BirthDate.ParameterName = "@BirthDate";
                BirthDate.SqlDbType = SqlDbType.NVarChar;
                BirthDate.Direction = ParameterDirection.Input;

                SqlParameter idPar = new SqlParameter();
                idPar.ParameterName = "@Utilizador_id";
                idPar.SqlDbType = SqlDbType.Int;
                idPar.Direction = ParameterDirection.Output;

                cmd.Parameters.Add(NomeUser);
                cmd.Parameters.Add(Email);
                cmd.Parameters.Add(Password);
                cmd.Parameters.Add(BirthDate);
                cmd.Parameters.Add(idPar);

                conn.Open();

                int result = cmd.ExecuteNonQuery();

                int id = (int)idPar.Value;

                utilizador.Id = id;

                if (result < 0)
                {
                    throw new Exception("O seu utilizador não foi adicionado.");
                }

            }
        }

        public void Update(Utilizador utilizador)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spUpdateUser";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter Id = new SqlParameter();
                Id.Value = utilizador.Id;
                Id.ParameterName = "Utilizador_id";
                Id.SqlDbType = SqlDbType.Int;
                Id.Direction = ParameterDirection.Input;

                SqlParameter NomeUser = new SqlParameter();
                NomeUser.Value = utilizador.Nome;
                NomeUser.ParameterName = "@NomeUser";
                NomeUser.SqlDbType = SqlDbType.NVarChar;
                NomeUser.Direction = ParameterDirection.Input;

                SqlParameter Email = new SqlParameter();
                Email.Value = utilizador.Email;
                Email.ParameterName = "@Email";
                Email.SqlDbType = SqlDbType.NVarChar;
                Email.Direction = ParameterDirection.Input;

                SqlParameter Password = new SqlParameter();
                Password.Value = utilizador.Password;
                Password.ParameterName = "@Password";
                Password.SqlDbType = SqlDbType.NVarChar;
                Password.Direction = ParameterDirection.Input;

                SqlParameter BirthDate = new SqlParameter();
                BirthDate.Value = utilizador.Password;
                BirthDate.ParameterName = "@BirthDate";
                BirthDate.SqlDbType = SqlDbType.NVarChar;
                BirthDate.Direction = ParameterDirection.Input;



                cmd.Parameters.Add(NomeUser);
                cmd.Parameters.Add(Email);
                cmd.Parameters.Add(Password);
                cmd.Parameters.Add(BirthDate);

                conn.Open();

                int result = cmd.ExecuteNonQuery();


                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. O seu utilizador não foi atualizado.");
                }
            }
        }

        public void Remove(int id)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spDeleteUser";
                cmd.CommandType = CommandType.StoredProcedure;

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
