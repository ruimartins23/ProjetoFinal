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
    public class CategoriaRepository
    {
        public List<Categoria> GetAll()
        {
            List<Categoria> temp = new List<Categoria>();

            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {            

                string query = "SELECT * FROM Categoria";

                SqlCommand cmd = new SqlCommand(query, conn);

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
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {           

                string query = $"SELECT * FROM Categoria WHERE Categoria_Id = {id} ";

                SqlCommand cmd = new SqlCommand(query, conn);

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
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                string query = $"INSERT INTO Categoria (ValorCategoria) VALUES({Categoria.ValorCategoria})";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Produto", Categoria.ValorCategoria);

                conn.Open();
                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua categoria não foi adicionada.");
                }

            }
        }

        public void Update(Categoria Categoria)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
                string query = $"UPDATE Categoria SET ValorCategoria = {Categoria.ValorCategoria}";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@ValorCategoria", Categoria.ValorCategoria);

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
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                string query = $"DELETE FROM Categoria WHERE Categoria_Id = {id} ";

                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@Categoria_Id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Aconteceu um erro. A sua categoria não foi eliminada.");
                }

            }
        }
    }
}
