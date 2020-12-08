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
    public partial class PersonalArea : System.Web.UI.Page
    {
        private EmployeeService _service;

        protected void Page_Load(object sender, EventArgs e)
        {
            _service = new EmployeeService();

            IdentityUserNameLbl.Text = User.Identity.Name;

            Employee emp = _service.GetLoggedInEmployee(User.Identity.Name);

            FullNameLbl.Text = emp.firstName + " " + emp.LastName;
            IdLbl.Text = emp.Id.ToString();
            TypeLbl.Text = emp.EmployeeType.ToString();
            

        }
    }
}