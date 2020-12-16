using ClassLibrary;
using ProjetoFinal.Services.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.WebForms
{
    public partial class PersonalArea : System.Web.UI.Page
    {
        public List<Receita> favRec = new List<Receita>();
        protected void Page_Load(object sender, EventArgs e)
        {
            ReceitaServices recServ = new ReceitaServices();
            UtilizadorServices userRec = new UtilizadorServices();
            string userName = Membership.GetUser().UserName;
            Utilizador user = userRec.GetUserByMembershipName(userName);
            int idUser = user.Id;
            favRec = userRec.GetFavRecipesByUserId(idUser);
            foreach (Receita recipe in favRec)
            {
                int id = recipe.Id;
                Receita receita = recServ.GetById(id);
                favRec.Add(receita);
            }
        }
    }
}