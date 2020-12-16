using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;
using ClassLibrary.Model;
using ProjetoFinal.Services.Services;
using static ClassLibrary.Receita;

namespace ProjetoFinal.WebForms
{
    public partial class InsertReceita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool val = System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            if (val)
            {
                UtilizadorServices userRec = new UtilizadorServices();
                string userName = Membership.GetUser().UserName;
                Utilizador user = userRec.GetUserByMembershipName(userName);
                int idUser = user.Id;
                Receita recipe = new Receita();
                ReceitaServices recServ = new ReceitaServices();
                recipe.Nome = nameTxt.Text;
                recipe.Descricao = descTxt.Text;
                recipe.Duracao = durTxt.Text;
                recipe._dificuldade = (Dificuldade)int.Parse(DropDownList1.SelectedValue);
                recipe.Validado = false;
                recipe.Categoria = catTxt.Text;
                recipe.Utilizador_id = idUser;
                //foreach (Ingrediente item in ListBox1.SelectedValue)
                //{
                //    Ingrediente ing = (Ingrediente)item;
                //    recipe.Ingredientes.Add(ing);
                //}

                recServ.Add(recipe);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }


            
        }
    }
}