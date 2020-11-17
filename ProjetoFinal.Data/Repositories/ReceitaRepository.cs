using ClassLibrary;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static ClassLibrary.Receita;

namespace ProjetoFinal.Data.Repositories
{
    public class ReceitaRepository
    {
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
                int id = dr.GetInt32(0);
                string nome = dr.GetString(1);
                string descricao = dr.GetString(2);
                TimeSpan duracao = dr.GetTimeSpan(3);
                bool validado = dr.GetBoolean(9);
                byte rating = dr.GetByte(5);
                byte dificuldade = dr.GetByte(6);



                Receita recipes = new Receita(id, nome, descricao, duracao, validado, Rating.CincoEstrelas, Dificuldade.Díficl); // ADICIONAR ENUMS?
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
                    receita.Id = dr.GetInt32(0);
                    receita.Nome = dr.GetString(1);
                    receita.Descricao = dr.GetString(2);
                    receita.Duracao = dr.GetTimeSpan(3);
                    receita.Dificuldade = dr.GetString(4);
                    receita.Rating = dr.GetInt32(5);


                }
                return receita;

            }
            conn.Close();

            throw new Exception("Nao existe nenhuma receita com o ID " + Id);
        }

        public void Add(Receita receita)
        {
            
            string cs = $@"data source = RUI\SQLEXPRESS; database = ProjetoFinal; Integrated Security = true";

            SqlConnection conn = new SqlConnection(cs);
            string query = $"INSERT INTO Receita (NomeRec, Descricao, Duracao, Categoria,) VALUES({receita.Nome}, {receita.Descricao}, {receita.Duracao}, {receita.Categoria})";

            SqlCommand cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@NomeRec", receita.Nome);
            cmd.Parameters.AddWithValue("@Descricao", receita.Descricao);
            cmd.Parameters.AddWithValue("@Duracao", receita.Duracao);
            cmd.Parameters.AddWithValue("@Categoria", receita.Categoria);

            conn.Open();
            int result = cmd.ExecuteNonQuery();

            if (result < 0)
            {
                throw new Exception("Ocorreu um erro. A sua receita não foi adicionada");
            }

            conn.Close();



        }

        public void Update(Receita receita)
        {

        }

        public void Remove(int Id)
        {

        }
    }
}
