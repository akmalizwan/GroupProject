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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string emailphone = TextBox1.Text;
            Session["emailphone"] = TextBox1.Text;
            string password = TextBox2.Text;
            Session["password"] = TextBox1.Text;

            SqlCommand namecmd = new SqlCommand("SELECT name FROM Account WHERE email= @email AND password= @password OR phoneNum = @phoneNum AND password= @password", con);
            namecmd.Parameters.AddWithValue("@email", emailphone);
            namecmd.Parameters.AddWithValue("@password", password);
            namecmd.Parameters.AddWithValue("@phoneNum", emailphone);

            object name = namecmd.ExecuteScalar();

            Label1.Text = name.ToString();
            Session["name"] = name.ToString();

            SqlCommand phoneNumcmd = new SqlCommand("SELECT accBalance FROM Account WHERE email= @email AND password= @password OR email= @email AND phoneNum = @phoneNum", con);
            phoneNumcmd.Parameters.AddWithValue("@email", emailphone);
            phoneNumcmd.Parameters.AddWithValue("@password", password);
            phoneNumcmd.Parameters.AddWithValue("@phoneNum", emailphone);

            object balance = phoneNumcmd.ExecuteScalar();

            Session["balance"] = balance.ToString();
        }
    }
}