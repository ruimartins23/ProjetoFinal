using ClassLibrary;
using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static ClassLibrary.Receita;

namespace ProjetoFinal.Data.Repositories
{
    public class ReceitaRepository
    {
        public string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

        public List<Receita> GetAll()
        {
            List<Receita> receitas = new List<Receita>();


            using (SqlConnection conn = new SqlConnection(cs))
            {            

                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetAllReceita";
                cmd.CommandType = CommandType.StoredProcedure;


                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                int id = dr.GetInt32(0);
                string nome = dr.GetString(1);
                string descricao = dr.GetString(2);
                TimeSpan duracao = dr.GetTimeSpan(3);
                Rating rating = (Rating)dr.GetByte(4);
                Dificuldade dificuldade = (Dificuldade)dr.GetByte(5);
                bool validado = dr.GetBoolean(9);



                Receita recipes = new Receita(id, nome, descricao, duracao, validado, rating, dificuldade);
                receitas.Add(recipes);

            }
            conn.Close();

            return receitas;

            }
        }

        public Receita GetById(int id)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {


                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spGetReceitaById";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                Receita receita = new Receita();

                while (dr.Read())
                 {

                    {
                        receita.Id = dr.GetInt32(0);
                        receita.Nome = dr.GetString(1);
                        receita.Descricao = dr.GetString(2);
                        receita.Duracao = dr.GetTimeSpan(3);
                        receita._dificuldade = (Dificuldade)dr.GetInt32(4);
                        receita._rating = (Rating)dr.GetInt32(5);

                    }


                 }

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Nao existe nenhuma receita com o ID " + id);
                }

                return receita;
            }
        }

        public void Add(Receita receita)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spAddReceita";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter Id = new SqlParameter();
                Id.Value = receita.Id;
                Id.ParameterName = "@Receita_id";
                Id.SqlDbType = SqlDbType.Int;
                Id.Direction = ParameterDirection.Output;

                SqlParameter NomeRec = new SqlParameter();
                NomeRec.Value = receita.Nome;
                NomeRec.ParameterName = "@NomeRec";
                NomeRec.SqlDbType = SqlDbType.NVarChar;
                NomeRec.Direction = ParameterDirection.Input;

                SqlParameter Descricao = new SqlParameter();
                Descricao.Value = receita.Descricao;
                Descricao.ParameterName = "@Descricao";
                Descricao.SqlDbType = SqlDbType.NText;
                Descricao.Direction = ParameterDirection.Input;

                SqlParameter Duracao = new SqlParameter();
                Duracao.Value = receita.Duracao;
                Duracao.ParameterName = "@Duracao";
                Duracao.SqlDbType = SqlDbType.NVarChar;
                Duracao.Direction = ParameterDirection.Input;

                SqlParameter Rating = new SqlParameter();
                Rating.Value = receita._rating;
                Rating.ParameterName = "@Rating";
                Rating.SqlDbType = SqlDbType.Bit;
                Rating.Direction = ParameterDirection.Input;

                SqlParameter Dificulty = new SqlParameter();
                Dificulty.Value = receita._dificuldade;
                Dificulty.ParameterName = "@Dificuldade";
                Dificulty.SqlDbType = SqlDbType.Bit;
                Dificulty.Direction = ParameterDirection.Input;

                SqlParameter Categoria = new SqlParameter();
                Categoria.Value = receita.Categoria;
                Categoria.ParameterName = "@Categoria";
                Categoria.SqlDbType = SqlDbType.NVarChar;
                Categoria.Direction = ParameterDirection.Input;

                cmd.Parameters.Add(Id);
                cmd.Parameters.Add(NomeRec);
                cmd.Parameters.Add(Descricao);
                cmd.Parameters.Add(Duracao);
                cmd.Parameters.Add(Rating);
                cmd.Parameters.Add(Dificulty);
                cmd.Parameters.Add(Categoria);


                conn.Open();

                int idRec = (int)Id.Value;

                idRec = receita.Id;

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua receita não foi adicionada");
                }

            }

        }

        public void Update(Receita receita)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spUpdateReceita";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter Id = new SqlParameter();
                Id.Value = receita.Id;
                Id.ParameterName = "@Receita_id";
                Id.SqlDbType = SqlDbType.Int;
                Id.Direction = ParameterDirection.Output;

                SqlParameter NomeRec = new SqlParameter();
                NomeRec.Value = receita.Nome;
                NomeRec.ParameterName = "@NomeRec";
                NomeRec.SqlDbType = SqlDbType.NVarChar;
                NomeRec.Direction = ParameterDirection.Input;

                SqlParameter Descricao = new SqlParameter();
                Descricao.Value = receita.Descricao;
                Descricao.ParameterName = "@Descricao";
                Descricao.SqlDbType = SqlDbType.NText;
                Descricao.Direction = ParameterDirection.Input;

                SqlParameter Duracao = new SqlParameter();
                Duracao.Value = receita.Duracao;
                Duracao.ParameterName = "@Duracao";
                Duracao.SqlDbType = SqlDbType.Bit;
                Duracao.Direction = ParameterDirection.Input;

                SqlParameter Rating = new SqlParameter();
                Rating.Value = receita._rating;
                Rating.ParameterName = "@Rating";
                Rating.SqlDbType = SqlDbType.Bit;
                Rating.Direction = ParameterDirection.Input;

                SqlParameter Categoria = new SqlParameter();
                Categoria.Value = receita.Categoria;
                Categoria.ParameterName = "@Categoria";
                Categoria.SqlDbType = SqlDbType.NVarChar;
                Categoria.Direction = ParameterDirection.Input;

                cmd.Parameters.Add(NomeRec);
                cmd.Parameters.Add(Descricao);
                cmd.Parameters.Add(Rating);
                cmd.Parameters.Add(Duracao);
                cmd.Parameters.Add(Categoria);

                conn.Open();
                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua receita não foi atualizada.");
                }

            }
        }

        public void Remove(int id)
        {

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spRemoveReceita";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                cmd.Parameters.AddWithValue("@Receita_id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua receita não foi apagada.");
                }

            }
        }
    }
}
