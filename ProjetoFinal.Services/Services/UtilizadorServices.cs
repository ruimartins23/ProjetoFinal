﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using ClassLibrary;
using ProjetoFinal.Data.Repositories;

namespace ProjetoFinal.Services.Services
{
    public class UtilizadorServices
    {
        private UtilizadorRepository _repo;

        public UtilizadorServices()
        {
            _repo = new UtilizadorRepository();
        }

        public List<Utilizador> GetAll()
        {
            return _repo.GetAll();
        }

        public Utilizador GetById(int id)
        {
            return _repo.GetById(id);
        }

        public void Add(Utilizador utilizador)
        {
            _repo.Add(utilizador);
        }

        public void Update(Utilizador utilizador)
        {
            _repo.Update(utilizador);
        }

        public void Remove(int id)
        {
            _repo.Remove(id);
        }

        public void AddUserWithMembership(Utilizador utilizador, string membershipUsername)
        {
            utilizador.MembershipUserName = membershipUsername;
            string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = conn.CreateCommand();

                cmd.CommandText = "spInsertUserWithMembership";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                cmd.Parameters.AddWithValue("@Nome", utilizador.Nome);
                cmd.Parameters.AddWithValue("@Email", utilizador.Email);
                cmd.Parameters.AddWithValue("@Birthdate", utilizador.BirthDate);
                cmd.Parameters.AddWithValue("@MembershipUsername", utilizador.MembershipUserName);

                int id = (int)cmd.ExecuteScalar();
                utilizador.Id = id;


            }

        }

        public Utilizador GetLoggedInUser(string identityUsername)
        {

            string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

            Utilizador user = null;

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "spGetLoggedInUser";
                cmd.CommandType = CommandType.StoredProcedure;

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                user = new Utilizador();

                //cmd.Parameters["@MembershipUsername"].Value = user.MembershipUserName;

                //SqlParameter mUser = new SqlParameter();
                //mUser.Value = user.MembershipUserName;
                //mUser.ParameterName = "@MembershipUsername";
                //mUser.SqlDbType = SqlDbType.NVarChar;
                //mUser.Direction = ParameterDirection.InputOutput;


                user = new Utilizador();

                if (dr.Read())
                {
                    user.Id = dr.GetInt32(0);
                    user.Nome = dr.GetString(1);
                    user.Email = dr.GetString(2);
                    user.BirthDate = dr.GetDateTime(3);
                    user.MembershipUserName = dr.GetString(7);

                    return user;
                }
                else
                {
                    throw new Exception("Não existe");
                }

            }
        }

        public Utilizador GetUserByMembershipName(string membership)
        {
            string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;
            Utilizador user = null;

            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                cmd.CommandText = "spGetUsersByMembership";
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter par = new SqlParameter("@MembershipUsername", membership);
                par.Direction = ParameterDirection.Input;
                cmd.Parameters.Add(par);

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    user = new Utilizador();

                    user.Id = dr.GetInt32(0);
                    user.Nome = dr.GetString(1);
                    user.Email = dr.GetString(2);
                    user.BirthDate = dr.GetDateTime(3);
                }

                return user;
            }
        }

        public List<Receita> GetFavRecipesByUserId(int userId)
        {
            return _repo.GetFavRecipesByUserId(userId);
        }

    }
}
