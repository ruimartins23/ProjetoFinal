using Application;
using Model.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employees.Membership
{
    public partial class Login : System.Web.UI.Page
    {

        private EmployeeService _service;

        protected void Page_Load(object sender, EventArgs e)
        {
            _service = new EmployeeService();
        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            
            //Employee emp = _service.GetLoggedInEmployee(User.Identity.Name);

            //Session["LoggedInUser"] = emp;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //Employee emp = _service.GetLoggedInEmployee(User.Identity.Name);

            //Session["LoggedInUser"] = emp;
        }
    }
}