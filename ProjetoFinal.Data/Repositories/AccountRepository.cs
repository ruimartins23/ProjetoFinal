using ClassLibrary;
using ClassLibrary.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Data.Repositories
{
    public class AccountRepository
    {
        public List<Account> GetAll()
        {
            List<Account> temp = new List<Account>();

            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {            

                string query = "SELECT * FROM Account";

                SqlCommand cmd = new SqlCommand(query, conn);

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    int id = dr.GetInt32(0);
                    string userName = dr.GetString(1);
                    string password = dr.GetString(2);
               
                    Account Account = new Account(id, userName, password); //add utilizador?
                    temp.Add(Account);

                }


                return temp;
            }
        }

        public Account GetById(int id)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

            

                string query = $"SELECT * FROM Account WHERE Account_Id = {id} ";

                SqlCommand cmd = new SqlCommand(query, conn);

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    Account Account = new Account();
                    {
                        Account.Id = dr.GetInt32(0);
                        Account.Username = dr.GetString(1);
                        Account.Password = dr.GetString(2);
                    // utilizador?

                        return Account;
                    }
                
                }

                throw new Exception("O ID inserido nao existe");

            }

        }   
        public void Add(Account Account)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                string query = $"INSERT INTO Account (Username, Password, Utilizador_Id) VALUES({Account.Username}, {Account.Password}, {Account.Utilizador.Id})";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Username", Account.Username);
                cmd.Parameters.AddWithValue("@Password", Account.Password);
                cmd.Parameters.AddWithValue("@Utilizadpr_Id", Account.Utilizador.Id);

                conn.Open();
                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua conta não foi adicionada.");
                }

            }
        }

        public void Update(Account Account)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
                string query = $"UPDATE Account SET Username = {Account.Username}, Password = {Account.Password}, Utilizador_Id = {Account.Utilizador.Id}";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Username", Account.Username);
                cmd.Parameters.AddWithValue("@Password", Account.Password);
                cmd.Parameters.AddWithValue("@Utilizador_Id", Account.Utilizador.Id);

                conn.Open();
                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua conta não foi adicionada.");
                }

            }
        }

        public void Remove(int id)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                string query = $"DELETE FROM Account WHERE Account_Id = {id} ";

                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@Account_Id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Aconteceu um erro. A sua categoria não foi eliminada.");
                }

            }
        }
    }
}
