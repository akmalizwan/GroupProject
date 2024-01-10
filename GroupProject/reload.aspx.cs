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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            Label1.Text = (Session["balance"] != null) ? Session["balance"].ToString() : "0";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string amount = TextBox1.Text;

            SqlCommand cmd = new SqlCommand("SELECT accBalance FROM Account WHERE email = @email OR phoneNum = @phoneNum", con);
            cmd.Parameters.AddWithValue("@email", (string)Session["emailphone"]);
            cmd.Parameters.AddWithValue("@phoneNum", (string)Session["emailphone"]);
            object balance = cmd.ExecuteScalar();

            double newtotal = Convert.ToDouble(amount) + Convert.ToDouble(balance);

            if (RangeValidator4.IsValid)
            {

                SqlCommand cmd2 = new SqlCommand("UPDATE Account SET accBalance = @newtotal WHERE email = @email OR phoneNum = @phoneNum", con);
                cmd2.Parameters.AddWithValue("@email", (string)Session["emailphone"]);
                cmd2.Parameters.AddWithValue("@phoneNum", (string)Session["emailphone"]);
                cmd2.Parameters.AddWithValue("@newtotal", newtotal);

                cmd2.ExecuteNonQuery();

                // Update the Session["balance"] after the database update
                Session["balance"] = newtotal.ToString();

                Label1.Text = newtotal.ToString();
            }
        }
    }
}