﻿using Application;
using Model.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employees.Membership
{
    public partial class Default : System.Web.UI.Page
    {
        private EmployeeService _service;
        protected void Page_Load(object sender, EventArgs e)
        {
            _service = new EmployeeService();

            if (Session["LoggedInUser"] != null)
                Label1.Text = ((Employee)Session["LoggedInUser"]).firstName;
            else
                Label1.Text = "null";
        }

    }
}