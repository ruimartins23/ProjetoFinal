using ClassLibrary;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Data.Repositories
{
    public class IngredienteRepository
    {

        public List<Ingrediente> GetAll()
        {
            List<Ingrediente> temp = new List<Ingrediente>();

            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = "SELECT * FROM Ingrediente";

            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                int id = dr.GetInt32(0);
                string unidade = dr.GetString(1);
                string produto = dr.GetString(2);


                Ingrediente ingrediente = new Ingrediente(id, unidade, produto);
                temp.Add(ingrediente);

            }
            conn.Close();

            return temp;

        }

        public Ingrediente GetById(int id)
        {
            
            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = $"SELECT * FROM Ingrediente WHERE Ingrediente_id = {id} ";

            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {

                Ingrediente ingrediente = new Ingrediente();
                {
                    ingrediente.Id = dr.GetInt32(0);
                    ingrediente.Unidade = dr.GetString(1);
                    ingrediente.Produto = dr.GetString(2);
                    
                    
                }
                return ingrediente;

            }
            conn.Close();

            throw new Exception("Nao existe nenhum ingrediente com o ID " + id);

        }

        public void Add(Ingrediente ingrediente)
        {

        }

        public void Update(Ingrediente ingrediente)
        {

        }

        public void Remove(int id)
        {

        }
    }
}
