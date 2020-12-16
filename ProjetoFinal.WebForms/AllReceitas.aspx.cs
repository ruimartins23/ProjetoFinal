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
    public partial class AllReceitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("ViewDetails.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           

          
        }
    }
}