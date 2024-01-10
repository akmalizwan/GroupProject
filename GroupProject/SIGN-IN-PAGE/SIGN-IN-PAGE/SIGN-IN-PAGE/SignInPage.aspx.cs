using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SIGN_IN_PAGE
{
    public partial class SignInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtPass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Assuming you have a table named 'Users' with columns 'Name', 'Email', and 'Phone'
                string email = txtEmailPhone.Text;      
                string pass = txtPass.Text;

                Response.Redirect("MainPage.aspx");
                // Clear the form after submission
                ClearForm();
            }
            if (revEmailPhone.IsValid)
            {
                revEmailPhone0.IsValid = true;
            }
            if (revEmailPhone0.IsValid)
            {
                revEmailPhone.IsValid = true;
            }
        }

        private void ClearForm()
        {
            txtEmailPhone.Text = "";
            txtPass.Text = "";
        }

        protected void txtEmailPhone_TextChanged(object sender, EventArgs e)
        {

        }
    }
}