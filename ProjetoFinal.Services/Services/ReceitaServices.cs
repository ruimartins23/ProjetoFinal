using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProjetoFinal.Data.Repositories;
using ClassLibrary;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ProjetoFinal.Services.Services
{
    public class ReceitaServices
    {
        private ReceitaRepository _repo;

        public ReceitaServices()
        {
            _repo = new ReceitaRepository();
        }

        public List<Receita> GetAll()
        {
            return _repo.GetAll();
        }

        public Receita GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Receita receita)
        {
            _repo.Add(receita);
        }

        public void Update(Receita receita)
        {
            _repo.Update(receita);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
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
            _repo.InsertFavouriteRecipe(userId, recipeId);
        }
    }

}
