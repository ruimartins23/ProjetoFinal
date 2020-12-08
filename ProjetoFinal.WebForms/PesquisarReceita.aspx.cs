using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjetoFinal.WebForms
{
    public partial class About : Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ProjetoFinalCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using(SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "spSearchReceita";
                cmd.CommandType = CommandType.StoredProcedure;

                if (nameInput.Text != "")
                {
                    cmd.Parameters.AddWithValue("@NomeRec", SqlDbType.NVarChar).Value = nameInput.Text;
                }

                if (ctgryInput.Text != "")
                {
                    cmd.Parameters.AddWithValue("@Categoria", SqlDbType.NVarChar).Value = ctgryInput.Text;
                }

                conn.Open();

                SqlDataReader rd = cmd.ExecuteReader();
                DataList1.DataSource = rd;
                DataList1.DataBind();

            }
        }
    }
}