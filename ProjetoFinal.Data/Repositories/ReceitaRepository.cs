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
        public List<Receita> GetAll()
        {
            List<Receita> receitas = new List<Receita>();

            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            SqlConnection conn = new SqlConnection(cs);

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
                bool validado = dr.GetBoolean(9);
                byte _rating = (byte)(Rating)dr.GetByte(5);
                byte _dificuldade = (byte)(Dificuldade)dr.GetByte(6); // ERRADO CORRIGIR



                Receita recipes = new Receita(id, nome, descricao, duracao, validado , _dificuldade , Dificulda); // ADICIONAR ENUMS? NAO CONSIGO
                receitas.Add(recipes);

            }
            conn.Close();
            return receitas;
        }

        public Receita GetById(int Id)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            { 
           
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
                        receita._dificuldade = (Dificuldade)dr.GetInt32(4);
                        receita._rating = (Rating)dr.GetInt32(5); // FIX THIS SHIT 


                    }
                    return receita;

                 }


                throw new Exception("Nao existe nenhuma receita com o ID " + Id);

            }
        }

        public void Add(Receita receita)
        {

            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
            
                string query = $"INSERT INTO Receita (NomeRec, Descricao, Duracao, Dificuldade, Rating, Categoria, Utilizador) VALUES({receita.Nome}, {receita.Descricao}, {receita.Duracao},{receita._dificuldade}, {receita._rating} {receita.Categoria}, {receita.Utilizador.Id})";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@NomeRec", receita.Nome);
                cmd.Parameters.AddWithValue("@Descricao", receita.Descricao);
                cmd.Parameters.AddWithValue("@Duracao", receita.Duracao);
                cmd.Parameters.AddWithValue("@Dificuldade", receita._dificuldade);
                cmd.Parameters.AddWithValue("@Rating", receita._rating);
                cmd.Parameters.AddWithValue("@Categoria", receita.Categoria);
                cmd.Parameters.AddWithValue("@Utilizador_id", receita.Utilizador.Id);

                conn.Open();
                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. A sua receita não foi adicionada");
                }

            }

        }

        public void Update(Receita receita)
        {
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {           
                string query = $"UPDATE Receita SET NomeRec = {receita.Nome}, Descricao = {receita.Descricao}, Duracao = {receita.Duracao}, Categoria = {receita.Categoria}) WHERE Receita_id = {receita.Id} ";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@NomeRec", receita.Nome);
                cmd.Parameters.AddWithValue("@Descricao", receita.Descricao);
                cmd.Parameters.AddWithValue("@Duracao", receita.Duracao);
                cmd.Parameters.AddWithValue("@Categoria", receita.Categoria);

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
            var cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(cs))
            {
           
               string query = $"DELETE FROM Receita WHERE Receita_id = {id} ";

                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@Receita_Id", id);

                int result = cmd.ExecuteNonQuery();

                if (result < 0)
                {
                    throw new Exception("Aconteceu um erro. A receita nao foi apagada.");
                }   

            }
        }
    }
}
