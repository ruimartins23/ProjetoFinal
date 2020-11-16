using ClassLibrary.Model;
using System;
using System.Collections.Generic;
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

            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = "SELECT * FROM Comentario";

            SqlCommand cmd = new SqlCommand(query, conn);

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
            conn.Close();

            return temp;
        }

        public Comentario GetById(int id)
        {
            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = $"SELECT * FROM Comentario WHERE Comentario_id = {id} ";

            SqlCommand cmd = new SqlCommand(query, conn);

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
            conn.Close();

            throw new Exception("Nao existe nenhum Comentario com o ID " + id);
        }

        public void Add(Comentario Comentario)
        {

        }

        public void Update(Comentario Comentario)
        {

        }

        public void Remove(int Id)
        {

        }
    }
}
