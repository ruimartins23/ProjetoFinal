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
    public class ComentarioRepository
    {
        public List<Comentario> GetAll()
        {
            List<Comentario> temp = new List<Comentario>();

            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetAllComentario";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    int id = dr.GetInt32(0);
                    string valorComentario = dr.GetString(1);
                    DateTime dataPost = dr.GetDateTime(2);

                    Comentario Comentario = new Comentario(id, valorComentario, dataPost);
                    temp.Add(Comentario);

                }
            
                return temp;
            }
        }

        public Comentario GetById(int id)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetComentarioById";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {

                    Comentario Comentario = new Comentario();
                    {
                        Comentario.Id = dr.GetInt32(0);
                        Comentario.ValorComentario = dr.GetString(1);
                        Comentario.DataPost = dr.GetDateTime(2);
                    }
                    return Comentario;
                }
            
            throw new Exception("Nao existe nenhum Comentario com o ID " + id);

            }
        }

        public void Add(Comentario Comentario)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
           
                string query = $"INSERT INTO Comentario (ValorComentario, DatePost, Receita_Id, Utilizador_Id ) VALUES ({Comentario.ValorComentario}, {Comentario.DataPost}, {Comentario.Receita.Id},{Comentario.Utilizador.Id}";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@ValorComentario", Comentario.ValorComentario);
                cmd.Parameters.AddWithValue("@DatePost", Comentario.DataPost);
                cmd.Parameters.AddWithValue("@Receita_Id", Comentario.Receita.Id);
                cmd.Parameters.AddWithValue("@Utilizador_Id", Comentario.Utilizador.Id);

                conn.Open();
                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                throw new Exception("Ocorreu um erro. O seu comentario não foi adicionado.");
                }

            }
        }

        public void Update(Comentario Comentario)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
            
                string query = $"UPDATE Comentario SET ValorComentario = {Comentario.ValorComentario}, Receita_Id = {Comentario.Receita.Id}, Utilizador_id = {Comentario.Utilizador.Id}, DatePost = {Comentario.DataPost}) WHERE Comentario_id = {Comentario.Id} ";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@ValorComentario", Comentario.ValorComentario);
                cmd.Parameters.AddWithValue("@Receita_Id", Comentario.Receita.Id);
                cmd.Parameters.AddWithValue("@Utilizador_Id", Comentario.Utilizador.Id);
                cmd.Parameters.AddWithValue("@DatePost", Comentario.DataPost);

                conn.Open();

                int result = cmd.ExecuteNonQuery();

            if (result < 0)
            {
                throw new Exception("Aconteceu um erro. O seu comentário não foi atualizado.");

            }

            }

        }

        public void Remove(int id)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {

            
                string query = $"DELETE FROM Comentario WHERE Comentario_Id = {id} ";

                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();

                cmd.Parameters.AddWithValue("@Comentario_Id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Houve um erro. O seu comentário não foi removido");
                }

            }

        }
    }
}
