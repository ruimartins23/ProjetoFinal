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
    public partial class Register : System.Web.UI.Page
    {
        private EmployeeService _service;

        protected void Page_Load(object sender, EventArgs e)
        {
            _service = new EmployeeService();
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs baterraba)
        {
            Employee emp = new Employee();
            emp.firstName = FirstNameTxt.Text;
            emp.LastName = LastNameTxt.Text;
            emp.EmployeeType = (EmployeeType)int.Parse(EmployeeTypeDropDown.SelectedValue);

            emp.MembershipUsername = CreateUserWizard1.UserName; // Unique
            
            _service.Add(emp, CreateUserWizard1.UserName);
        }
    }
}