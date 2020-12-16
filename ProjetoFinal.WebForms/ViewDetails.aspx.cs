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
            Comentario coment = new Comentario();
            coment.ValorComentario = ((System.Web.UI.WebControls.TextBox)DataList1.FindControl("TextBox1")).Text;
            coment.DataPost = DateTime.Now;
            coment.Utilizador.Id = idUser;
            coment.Receita.Id = int.Parse(Request.QueryString["id"]);
            comServ.Add(coment);

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