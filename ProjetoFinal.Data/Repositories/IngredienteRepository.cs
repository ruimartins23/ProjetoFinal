using ClassLibrary;
using System;
using System.Data;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Data.Repositories
{
    public class IngredienteRepository
    {
        string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

        public List<Ingrediente> GetAll()
        {
            List<Ingrediente> temp = new List<Ingrediente>();


            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetAllIngrediente";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                int id = dr.GetInt32(0);
                string unidade = dr.GetString(2);
                string produto = dr.GetString(1);


                Ingrediente ingrediente = new Ingrediente(id, unidade, produto);
                temp.Add(ingrediente);

                }
            
                

            }

            return temp;
        }

        public Ingrediente GetById(int id)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetIngredienteById";
                cmd.CommandType = CommandType.StoredProcedure;

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
            

            throw new Exception("Nao existe nenhum ingrediente com o ID " + id);

            }
        }

        public void Add(Ingrediente ingrediente)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {


                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spAddIngrediente";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter Produto = new SqlParameter();
                Produto.Value = ingrediente.Produto;
                Produto.ParameterName = "@Produto";
                Produto.SqlDbType = SqlDbType.NVarChar;
                Produto.Direction = ParameterDirection.Input;

                SqlParameter Unidade = new SqlParameter();
                Unidade.Value = ingrediente.Unidade;
                Unidade.ParameterName = "@Unidade";
                Unidade.SqlDbType = SqlDbType.NVarChar;
                Unidade.Direction = ParameterDirection.Input;
 
                SqlParameter Id = new SqlParameter();
                Id.Value = ingrediente.Id;
                Id.ParameterName = "@Ingrediente_Id";
                Id.SqlDbType = SqlDbType.Int;
                Id.Direction = ParameterDirection.Output;

                cmd.Parameters.Add(Unidade);
                cmd.Parameters.Add(Produto);
                cmd.Parameters.Add(Id);

                int id = (int)Id.Value;

                ingrediente.Id = id;


                conn.Open();
                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. O seu ingrediente não foi adicionado.");
                }

            }
        }

        public void Update(Ingrediente ingrediente)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spUpdateIngrediente";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter Produto = new SqlParameter();
                Produto.Value = ingrediente.Produto;
                Produto.ParameterName = "@Produto";
                Produto.SqlDbType = SqlDbType.NVarChar;
                Produto.Direction = ParameterDirection.Input;

                SqlParameter Unidade = new SqlParameter();
                Unidade.Value = ingrediente.Unidade;
                Unidade.ParameterName = "@Unidade";
                Unidade.SqlDbType = SqlDbType.NVarChar;
                Unidade.Direction = ParameterDirection.Input;

                SqlParameter Id = new SqlParameter();
                Id.Value = ingrediente.Id;
                Id.ParameterName = "@Ingrediente_id";
                Id.SqlDbType = SqlDbType.Int;
                Id.Direction = ParameterDirection.Input;

                cmd.Parameters.Add(Unidade);
                cmd.Parameters.Add(Produto);

                conn.Open();

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. O seu ingrediente não foi atualizado.");
                }

            }
        }

        public void Remove(int id)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spDeleteIngrediente";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                cmd.Parameters.AddWithValue("@Ingrediente_id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Aconteceu um erro. O seu ingrediente não foi apagado.");
                }

            }
        }
    }
}
