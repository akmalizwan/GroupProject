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
    public partial class SignInPage : System.Web.UI.Page
    {
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["email"] = txtEmail.Text;
            Session["balance"] = "0.00";

            if (txtPass.Text == txtRepass.Text)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Account (name, email, phoneNum, password) VALUES (@name, @email, @phoneNum, @password)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@phoneNum", txtPhone.Text);
                cmd.Parameters.AddWithValue("@password", txtPass.Text);

                cmd.ExecuteNonQuery();

                Response.Redirect("homepage.aspx");
            } else {
                Label1.Text = "Password does not match";
            }
        }
    }
}