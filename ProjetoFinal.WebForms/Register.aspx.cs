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
    public partial class Register : System.Web.UI.Page
    {
        private UtilizadorServices userServ;
        protected void Page_Load(object sender, EventArgs e)
        {
            userServ = new UtilizadorServices();
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }
    }
}
   