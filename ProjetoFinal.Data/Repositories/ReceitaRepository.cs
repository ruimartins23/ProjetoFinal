using ClassLibrary;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetoFinal.Data.Repositories
{
    public class ReceitaRepository
    {

        private static int _colReceita_id = 0;
        private static int _colName = 1;
        private static int _colDesc = 2;
        private static int _colDuracao = 3;
        private static int _colDificuldade = 4;
        private static int _colRating = 5;
        private static int _colCategoria = 6;


        public List<Receita> GetAll()
        {
            List<Receita> receitas = new List<Receita>();

            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = "SELECT * FROM Receita";

            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                int id = dr.GetInt32(_colReceita_id);
                string name = dr.GetString(_colName);
                string desc = dr.GetString(_colDesc);
                int duration = dr.GetInt32(_colDuracao);
                string dific = dr.GetString(_colDificuldade);
                int rating = dr.GetInt32(_colRating);
                string category = dr.GetString(_colCategoria);



                Receita recipes = new Receita(id, name, desc, duration, dific, rating, category); // CORRIGIR
                receitas.Add(recipes);

            }
            conn.Close();
            return receitas;
        }

        public Receita GetById(int Id)
        {
            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);

            string query = $"SELECT * FROM Receita WHERE Receita_id = {Id} ";

            SqlCommand cmd = new SqlCommand(query, conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {

                Receita receita = new Receita();
                {
                    receita.Id = dr.GetInt32(_colReceita_id);
                    receita.Nome = dr.GetString(_colName);
                    receita.Descricao = dr.GetString(_colDesc);
                    receita.Duracao = dr.GetInt32(_colDuracao);
                    receita.Dificuldade = dr.GetString(_colDificuldade);
                    receita.Rating = dr.GetInt32(_colRating);
                    receita.Categoria = dr.GetString(_colCategoria);


                }
                return receita;

            }
            conn.Close();

            throw new Exception("Nao existe nenhuma receita com o ID " + Id);
        }

        public void Add(Receita receita)
        {

        }

        public void Update(Receita receita)
        {

        }

        public void Remove(int Id)
        {

        }
    }
}
