using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT_WAD
{
    public partial class ReoladPages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValidateExpirationDate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = DropDownList1.SelectedIndex != 0 && DropDownList3.SelectedIndex != 0 && DropDownList4.SelectedIndex != 0;
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            // Validate the form before performing calculations
            if (Page.IsValid)
            {
                // Get the selected bank from the dropdown
                string selectedBank = DropDownList1.SelectedValue;

                // Get the entered amount from TextBox6
                if (double.TryParse(TextBox6.Text, out double enteredAmount))
                {
                    // Perform your calculation based on the selected bank and entered amount
                    double newBalance = TopUpBalance(selectedBank, enteredAmount);

                    // Display the new balance in the label or any other control
                    Label1.Text = $"BALANCE TOPPED UP: {enteredAmount:C2}\nNEW BALANCE: {newBalance:C2}";
                }
                else
                {
                    // Handle invalid amount input
                    Label1.Text = "Invalid amount entered.";
                }
            }
        }

        private double TopUpBalance(string selectedBank, double enteredAmount)
        {
            // Assuming you have some logic to get the current balance based on the selected bank
            // Replace this with your actual logic or database retrieval
            double currentBalance = GetBalanceFromDatabase(selectedBank);

            // Add the entered amount to the current balance
            double newBalance = currentBalance + enteredAmount;

            // Assuming you update the balance in the database (replace this with your actual logic)
            UpdateBalanceInDatabase(selectedBank, newBalance);

            return newBalance;
        }
        private double GetBalanceFromDatabase(string selectedBank)
        {
            // Replace this with your actual logic to retrieve the current balance from the database
            // For demonstration purposes, returning a static value, you should query your database.
            return 500.00;
        }

        private void UpdateBalanceInDatabase(string selectedBank, double newBalance)
        {
            // Replace this with your actual logic to update the balance in the database
            // You should execute an update query or use an ORM framework for this purpose
            // For demonstration purposes, logging the update, you should update your database.
            Console.WriteLine($"Updated balance for {selectedBank} to {newBalance:C2}");
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

// The GetBalanceFromDatabase and UpdateBalanceInDatabase methods remain the same as in the previous example.
