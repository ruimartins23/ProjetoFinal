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
    public class CategoriaRepository
    {
        string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

        public List<Categoria> GetAll()
        {

            List<Categoria> temp = new List<Categoria>();

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetAllCategoria";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    int id = dr.GetInt32(0);
                    string valorCategoria = dr.GetString(1);

                    Categoria Categoria = new Categoria(id, valorCategoria);
                    temp.Add(Categoria);

                }
           
                return temp;

            }
        }

        public Categoria GetById(int id)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetCategoriaById";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    Categoria Categoria = new Categoria();
                    {
                        Categoria.Id = dr.GetInt32(0);
                        Categoria.ValorCategoria = dr.GetString(1);

                    }
                    return Categoria;

                }


                throw new Exception("Nao existe nenhuma Categoria com o ID " + id);

            }
        }

        public void Add(Categoria Categoria)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spAddCategoria";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ValCat = new SqlParameter();
                ValCat.Value = Categoria.ValorCategoria;
                ValCat.ParameterName = "@ValorCategoria";
                ValCat.SqlDbType = SqlDbType.NVarChar;
                ValCat.Direction = ParameterDirection.Input;

                SqlParameter idCat = new SqlParameter();
                idCat.Value = Categoria.Id;
                idCat.ParameterName = "@Categoria_id";
                idCat.SqlDbType = SqlDbType.Int;
                idCat.Direction = ParameterDirection.Output;

                cmd.Parameters.Add(ValCat);
                cmd.Parameters.Add(idCat);




                conn.Open();
                int result = cmd.ExecuteNonQuery();

                int id = (int)idCat.Value;
                id = Categoria.Id;


                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua categoria não foi adicionada.");
                }

            }
        }

        public void Update(Categoria Categoria)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spUpdateCategoria";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ValCat = new SqlParameter();
                ValCat.Value = Categoria.ValorCategoria;
                ValCat.ParameterName = "@ValorCategoria";
                ValCat.SqlDbType = SqlDbType.NVarChar;
                ValCat.Direction = ParameterDirection.Input;

                SqlParameter idCat = new SqlParameter();
                idCat.Value = Categoria.Id;
                idCat.ParameterName = "@Categoria_id";
                idCat.SqlDbType = SqlDbType.Int;
                idCat.Direction = ParameterDirection.Input;

                cmd.Parameters.Add(ValCat);
                cmd.Parameters.Add(idCat);

                conn.Open();
                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua categoria não foi atualizada.");
                }

            }
        }

        public void Remove(int id)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spDeleteCategoria";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                cmd.Parameters.AddWithValue("@Categoria_id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Aconteceu um erro. A sua categoria não foi eliminada.");
                }

            }
        }
    }
}
