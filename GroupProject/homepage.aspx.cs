using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace GroupProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Label1.Text = (string)Session["name"];
            Label2.Text = (string)Session["balance"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("reload.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("records.aspx");
        }
    }
}