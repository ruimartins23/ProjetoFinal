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
        private static int _colIngrediente_Id = 0;
        private static int _colNomeing = 1;
        private static int _colQuantidade = 2;


        public List<Ingrediente> GetAll()
        {
            List<Ingrediente> ingredients = new List<Ingrediente>();

            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = "SELECT * FROM Ingrediente";

            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                int id = dr.GetInt32(_colIngrediente_Id);
                decimal quantidade = dr.GetDecimal(_colQuantidade);
                string nomeIng = dr.GetString(_colNomeing);


                Ingrediente ingrediente = new Ingrediente(id, quantidade, nomeIng); // CORRIGIR
                ingredients.Add(ingrediente);

            }
            conn.Close();
            return ingredients;

        }

        public Ingrediente GetById(int Id)
        {
            
            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = $"SELECT * FROM Ingrediente WHERE Ingrediente_id = {Id} ";

            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {

                Ingrediente ingrediente = new Ingrediente();
                {
                    ingrediente.Id = dr.GetInt32(_colIngrediente_Id);
                    ingrediente.NomeIng = dr.GetString(_colNomeing);
                    ingrediente.Quantidade = dr.GetDecimal(_colQuantidade);
                    
                    
                }
                return ingrediente;

            }
            conn.Close();

            throw new Exception("Nao existe nenhum ingrediente com o ID " + Id);

        }

        public void Add(Ingrediente ingrediente)
        {

        }

        public void Update(Ingrediente ingrediente)
        {

        }

        public void Remove(int Id)
        {

        }
    }
}
