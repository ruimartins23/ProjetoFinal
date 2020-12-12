using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassLibrary;
using ProjetoFinal.Data.Repositories;

namespace ProjetoFinal.Services.Services
{
    public class UtilizadorServices
    {
        private UtilizadorRepository _repo;

        public UtilizadorServices()
        {
            _repo = new UtilizadorRepository();
        }

        public List<Utilizador> GetAll()
        {
            return _repo.GetAll();
        }

        public Utilizador GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Utilizador utilizador)
        {
            _repo.Add(utilizador);
        }

        public void Update(Utilizador utilizador)
        {
            _repo.Update(utilizador);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }

        public void AddUserWithMembership(Utilizador utilizador, string membershipUsername)
        {
            utilizador.MembershipUserName = membershipUsername;
            string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spInsertUserWithMembership";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                cmd.Parameters.AddWithValue("@Nome", utilizador.Nome);
                cmd.Parameters.AddWithValue("@Email", utilizador.Email);
                cmd.Parameters.AddWithValue("@Birthdate", utilizador.BirthDate);
                cmd.Parameters.AddWithValue("@MembershipUsername", utilizador.MembershipUserName);

                int id = (int)cmd.ExecuteScalar();
                utilizador.Id = id;


            }


    }

    }
}
