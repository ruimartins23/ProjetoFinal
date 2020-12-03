using ClassLibrary;
using ClassLibrary.Model;
using System;
using System.Data;
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
        string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

        public List<Account> GetAll()
        {
            List<Account> temp = new List<Account>();

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetAllAccount";
                cmd.CommandType = CommandType.StoredProcedure;

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

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetAccountById";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    Account Account = new Account();
                    {
                        Account.Id = dr.GetInt32(0);
                        Account.Username = dr.GetString(1);
                        Account.Password = dr.GetString(2);
                       
                    }

                    return Account;
                }

                throw new Exception("A account com o Id" + id + " não existe" );

            }

        }   
        public void Add(Account Account)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spAddAccount";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter UserName = new SqlParameter();
                UserName.Value = Account.Username;
                UserName.ParameterName = "@Username";
                UserName.SqlDbType = SqlDbType.NVarChar;
                UserName.Direction = ParameterDirection.Input;

                SqlParameter Password = new SqlParameter();
                Password.Value = Account.Password;
                Password.ParameterName = "@Password";
                Password.SqlDbType = SqlDbType.NVarChar;
                Password.Direction = ParameterDirection.Input;

                SqlParameter UtilizadorId = new SqlParameter();
                UtilizadorId.Value = Account.Utilizador.Id;
                UtilizadorId.ParameterName = "@Utilizador_id";
                UtilizadorId.SqlDbType = SqlDbType.Int;
                UtilizadorId.Direction = ParameterDirection.Input;

                SqlParameter AccountId = new SqlParameter();
                AccountId.Value = Account.Id;
                AccountId.ParameterName = "@Account_id";
                AccountId.SqlDbType = SqlDbType.Int;
                AccountId.Direction = ParameterDirection.Output;

                cmd.Parameters.Add(UserName);
                cmd.Parameters.Add(Password);
                cmd.Parameters.Add(UtilizadorId);
                cmd.Parameters.Add(AccountId); // not sure if needed


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

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spUpdateAccount";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter UserName = new SqlParameter();
                UserName.Value = Account.Username;
                UserName.ParameterName = "@Username";
                UserName.SqlDbType = SqlDbType.NVarChar;
                UserName.Direction = ParameterDirection.Input;

                SqlParameter Password = new SqlParameter();
                Password.Value = Account.Password;
                Password.ParameterName = "@Password";
                Password.SqlDbType = SqlDbType.NVarChar;
                Password.Direction = ParameterDirection.Input;

                SqlParameter UtilizadorId = new SqlParameter();
                UtilizadorId.Value = Account.Utilizador.Id;
                UtilizadorId.ParameterName = "@Utilizador_id";
                UtilizadorId.SqlDbType = SqlDbType.Int;
                UtilizadorId.Direction = ParameterDirection.Input;

                SqlParameter AccountId = new SqlParameter();
                AccountId.Value = Account.Id;
                AccountId.ParameterName = "@Account_id";
                AccountId.SqlDbType = SqlDbType.Int;
                AccountId.Direction = ParameterDirection.Output;

                cmd.Parameters.Add(UserName);
                cmd.Parameters.Add(Password);
                cmd.Parameters.Add(UtilizadorId);
                cmd.Parameters.Add(AccountId); // not sure if needed

                conn.Open();

                int result = cmd.ExecuteNonQuery();

                int id = (int)AccountId.Value;

                Account.Id = id;

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua conta não foi adicionada.");
                }

            }
        }

        public void Remove(int id)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spDeleteAccount";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                cmd.Parameters.AddWithValue("@Account_id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Aconteceu um erro. A sua conta não foi eliminada.");
                }

            }
        }
    }
}
