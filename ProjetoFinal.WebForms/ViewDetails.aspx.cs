using ClassLibrary;
using ClassLibrary.Model;
using ProjetoFinal.Services.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace ProjetoFinal.WebForms
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ComentarioServices comServ = new ComentarioServices();
            UtilizadorServices userRec = new UtilizadorServices();
            string userName = Membership.GetUser().UserName;
            Utilizador user = userRec.GetUserByMembershipName(userName);
            int idUser = user.Id;
            Comentario comentarius = new Comentario();
            string txtBoxValue = Page.Request.Form["comentTxt"].ToString();
            comentarius.ValorComentario = txtBoxValue;
            comentarius.DataPost = DateTime.Now;
            comentarius.Utilizador.Id = idUser;
            comentarius.Receita.Id = int.Parse(Request.QueryString["id"]);
            comServ.Add(comentarius);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            List<Receita> favRecipes = new List<Receita>();
            bool val = System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            if (val)
            {
                UtilizadorServices userRec = new UtilizadorServices();
                string userName = Membership.GetUser().UserName;
                Utilizador user = userRec.GetUserByMembershipName(userName);
                int idUser = user.Id;

                int idRec = int.Parse(Request.QueryString["id"]);
                ReceitaServices recServ = new ReceitaServices();
                Receita recipe = recServ.GetById(idRec);

                recServ.InsertFavouriteRecipe(idRec, idUser);
                favRecipes.Add(recipe);

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}