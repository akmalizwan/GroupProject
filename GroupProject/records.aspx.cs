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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string column = DropDownList1.SelectedValue;
            string value = TextBox1.Text;

            SqlCommand cmd = new SqlCommand($"SELECT * FROM Account WHERE {column} = @value", con);
            cmd.Parameters.AddWithValue("@value", value);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                GridView2.DataSource = reader;
                GridView2.DataBind();
                Label1.Text = "";
            } else {
                Label1.Text = "No result found";
            }
        }

        protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
        {

        }
    }
}