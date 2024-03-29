﻿using ClassLibrary.Model;
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
        string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

        public List<Comentario> GetAll()
        {

            List<Comentario> temp = new List<Comentario>();

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

        public void Add(Comentario comentario)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spAddComentario";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ValorComentario = new SqlParameter();
                ValorComentario.Value = comentario.ValorComentario;
                ValorComentario.ParameterName = "@ValorComentario";
                ValorComentario.DbType = DbType.String;
                ValorComentario.Direction = ParameterDirection.Input;

                SqlParameter UtilizadorId = new SqlParameter();
                UtilizadorId.Value = comentario.Utilizador.Id;
                UtilizadorId.ParameterName = "@Utilizador_id";
                UtilizadorId.DbType = DbType.Int32;
                UtilizadorId.Direction = ParameterDirection.Input;

                SqlParameter ReceitaId = new SqlParameter();
                ReceitaId.Value = comentario.Receita.Id;
                ReceitaId.ParameterName = "@Receita_Id";
                ReceitaId.DbType = DbType.Int32;
                ReceitaId.Direction = ParameterDirection.Input;

                SqlParameter DatePost = new SqlParameter();
                DatePost.Value = comentario.DataPost;
                DatePost.ParameterName = "@DatePost";
                DatePost.DbType = DbType.DateTime;
                DatePost.Direction = ParameterDirection.Input;

                SqlParameter ComentId = new SqlParameter();
                ComentId.Value = comentario.Id;
                ComentId.ParameterName = "@Comentario_id";
                ComentId.DbType = DbType.Int32;
                ComentId.Direction = ParameterDirection.Output;

                cmd.Parameters.Add(ValorComentario);
                cmd.Parameters.Add(UtilizadorId);
                cmd.Parameters.Add(ReceitaId);
                cmd.Parameters.Add(DatePost);

                conn.Open();

                int result = cmd.ExecuteNonQuery();

                int id = (int)ComentId.Value;

                comentario.Id = id;

                if (result < 0)
                {
                    throw new Exception("Ocorreu um erro. O seu comentario não foi adicionado.");
                }

            }
        }

        public void Update(Comentario Comentario)
        {
            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spUpdateComentario";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter idCom = new SqlParameter();
                idCom.Value = Comentario.Id;
                idCom.ParameterName = "@Comentario_id";
                idCom.SqlDbType = SqlDbType.Int;
                idCom.Direction = ParameterDirection.Input;

                SqlParameter ValCom = new SqlParameter();
                ValCom.Value = Comentario.ValorComentario;
                ValCom.ParameterName = "@ValorComentario";
                ValCom.SqlDbType = SqlDbType.NText;
                ValCom.Direction = ParameterDirection.Input;

                cmd.Parameters.Add(ValCom);

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

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spDeleteComentario";
                cmd.CommandType = CommandType.StoredProcedure;

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
