using ClassLibrary;
using ProjetoFinal.Services.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        private UtilizadorServices _utiServ;
        protected void Page_Load(object sender, EventArgs e)
        {
            _utiServ = new UtilizadorServices();
        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {

            Utilizador user = _utiServ.GetLoggedInUser(User.Identity.Name);
            Session["LoggedInUser"] = user;


        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Utilizador user = _utiServ.GetLoggedInUser(User.Identity.Name);
            Session["LoggedInUser"] = user;
        }
    }
}