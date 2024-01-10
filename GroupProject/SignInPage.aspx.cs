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
    public partial class SignInPage1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string emailphone = TextBox1.Text;
            Session["emailphone"] = TextBox1.Text;
            string password = TextBox2.Text;

            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Account WHERE email = @email AND password = @password OR phoneNum = @phoneNum AND password = @password", con);
            cmd.Parameters.AddWithValue("@email", emailphone);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@phoneNum", emailphone);

            int count = (int)cmd.ExecuteScalar();

            if (count > 0)
            {
                SqlCommand namecmd = new SqlCommand("SELECT name FROM Account WHERE email= @email AND password= @password OR phoneNum = @phoneNum AND password= @password", con);
                namecmd.Parameters.AddWithValue("@email", emailphone);
                namecmd.Parameters.AddWithValue("@password", password);
                namecmd.Parameters.AddWithValue("@phoneNum", emailphone);
                object name = namecmd.ExecuteScalar();
                Session["name"] = name.ToString();

                SqlCommand cmd2 = new SqlCommand("SELECT accBalance FROM Account WHERE email= @email AND password= @password OR phoneNum = @phoneNum AND password = @password", con);
                cmd2.Parameters.AddWithValue("@email", emailphone);
                cmd2.Parameters.AddWithValue("@password", password);
                cmd2.Parameters.AddWithValue("@phoneNum", emailphone);
                object balance = cmd2.ExecuteScalar();
                Session["balance"] = balance.ToString();

                Response.Redirect("homepage.aspx");
            }
            else
            {
                Label1.Text = "Wrong email or password";
            }

        }
    }
}