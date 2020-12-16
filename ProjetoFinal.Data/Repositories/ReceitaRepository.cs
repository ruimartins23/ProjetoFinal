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
                string duracao = dr.GetString(3);
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

                SqlCommand cmd = new SqlCommand();
                Receita receita = new Receita();

                cmd.CommandText = "spGetReceitaById";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = conn;

                SqlParameter idPar = new SqlParameter("@Receita_id", id);
                idPar.SqlDbType = SqlDbType.Int;
                idPar.Direction = ParameterDirection.Input;

                cmd.Parameters.Add(idPar);

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                

                while (dr.Read())
                {

                    
                        receita.Id = dr.GetInt32(0);
                        receita.Nome = dr.GetString(1);
                        receita.Descricao = dr.GetString(2);
                        receita.Duracao = dr.GetString(3);
                        receita._dificuldade = (Dificuldade)dr.GetByte(4);
                        receita._rating = (Rating)dr.GetByte(5);

                    
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
                Rating.SqlDbType = SqlDbType.TinyInt;
                Rating.Direction = ParameterDirection.Input;

                SqlParameter Dificulty = new SqlParameter();
                Dificulty.Value = receita._dificuldade;
                Dificulty.ParameterName = "@Dificuldade";
                Dificulty.SqlDbType = SqlDbType.TinyInt;
                Dificulty.Direction = ParameterDirection.Input;

                SqlParameter userId = new SqlParameter();
                userId.Value = receita.Utilizador_id;
                userId.ParameterName = "@Utilizador_id";
                userId.SqlDbType = SqlDbType.Int;
                userId.Direction = ParameterDirection.Input;

                SqlParameter Categoria = new SqlParameter();
                Categoria.Value = receita.Categoria;
                Categoria.ParameterName = "@Categoria";
                Categoria.SqlDbType = SqlDbType.NVarChar;
                Categoria.Direction = ParameterDirection.Input;

                cmd.Parameters.Add(Id);
                cmd.Parameters.Add(NomeRec);
                cmd.Parameters.Add(Descricao);
                cmd.Parameters.Add(Duracao);
                cmd.Parameters.Add(Dificulty);
                cmd.Parameters.Add(Rating);
                cmd.Parameters.Add(userId);
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
                Duracao.SqlDbType = SqlDbType.NVarChar;
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
        public List<Receita> GetIdRecipe(int userId)
        {
            string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;
            List<Receita> recipes = new List<Receita>();

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                cmd.CommandText = "@spReadRecipeId";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter idPar = new SqlParameter("@Utilizador_id", userId);
                idPar.DbType = DbType.Int32;
                idPar.Direction = ParameterDirection.Input;

                cmd.Parameters.Add(idPar);

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                Receita recipe = null;

                while (dr.Read())
                {
                    recipe = new Receita();
                    recipe.Id = dr.GetInt32(1);

                    recipes.Add(recipe);
                }

                return recipes;
            }

            
        }

        public void InsertFavouriteRecipe(int recipeId, int userId)
        {
            string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            //using (SqlConnection conn = new SqlConnection(cs))
            //{
            //    SqlCommand cmd = new SqlCommand();
            //    cmd.Connection = conn;

            //    cmd.CommandText = "spInsertUserRecipeId";
            //    cmd.CommandType = CommandType.StoredProcedure;

            //    SqlParameter userPar = new SqlParameter("@Utilizador_id", userId);
            //    userPar.DbType = DbType.Int32;
            //    userPar.Direction = ParameterDirection.Input;

            //    SqlParameter recipePar = new SqlParameter("@Receita_id", recipeId);
            //    recipePar.DbType = DbType.Int32;
            //    recipePar.Direction = ParameterDirection.Input;

            //    cmd.Parameters.Add(userPar);
            //    cmd.Parameters.Add(recipePar);

            //    conn.Open();

            //    cmd.ExecuteNonQuery();

            using (SqlConnection connection = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandText = "spInsertUserRecipeId";
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter idRecipeParameter = new SqlParameter("@Receita_id", recipeId);
                idRecipeParameter.DbType = DbType.Int32;
                idRecipeParameter.Direction = ParameterDirection.Input;
                SqlParameter idUserParameter = new SqlParameter("@Utilizador_id", userId);
                idUserParameter.DbType = DbType.Int32;
                idUserParameter.Direction = ParameterDirection.Input;
                cmd.Parameters.Add(idUserParameter);
                cmd.Parameters.Add(idRecipeParameter);
                connection.Open();
                cmd.ExecuteNonQuery();

            }

        }
    }
}
