using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assigment2
{
    public partial class SignInPage : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }

        protected HttpResponse GetResponse()
        {
            return Response;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Assuming you have a table named 'Users' with columns 'Name', 'Email', and 'Phone'
                string name = txtName.Text;
                string email = txtEmail.Text;
                string phone = txtPhone.Text;
                string age = txtAge.Text;
                string pass = txtPass.Text;

                Response.Redirect("MainPage.aspx");
                // Clear the form after submission
                ClearForm();
            }
        }

        private void ClearForm()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
        }

    }
}

    
