using ClassLibrary;
using ClassLibrary.Model;
using System;
using System.Collections.Generic;
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

            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

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
            conn.Close();

            return temp;
        }

        public Account GetById(int id)
        {
            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

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
        public void Add(Account Account)
        {

        }

        public void Update(Account Account)
        {

        }

        public void Remove(int Id)
        {

        }
    }
}
