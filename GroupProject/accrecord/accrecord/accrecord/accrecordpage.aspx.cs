using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace wadproject
{
    public partial class accrecordpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTransactionHistory();
            }
        }

        private void LoadTransactionHistory()
        {
            // Connect to the database and retrieve transaction history
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM TransactionHistory", conn);
            SqlDataReader reader = null;

            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();

                GridViewTransactionHistory.DataSource = reader;
                GridViewTransactionHistory.DataBind();
            }
            catch (Exception ex)
            {
                // Handle exception
                Console.WriteLine(ex.Message);
            }
            finally
            {
                if (reader != null) reader.Close();
                if (cmd != null) cmd.Dispose();
                if (conn != null) conn.Close();
            }
        }

        // Handle GridView sorting
        protected void GridViewTransactionHistory_Sorting(object sender, GridViewSortEventArgs e)
        {
            // Get the DataTable from the GridView's DataSource
            var dataTable = GridViewTransactionHistory.DataSource as System.Data.DataTable;

            if (dataTable != null)
            {
                // Sort the DataTable
                dataTable.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortExpression);

                // Rebind the GridView with the sorted data
                GridViewTransactionHistory.DataSource = dataTable;
                GridViewTransactionHistory.DataBind();
            }
        }

        // Determine the sorting direction
        private string GetSortDirection(string column)
        {
            // By default, set the sort direction to ascending
            string sortDirection = "ASC";

            // Retrieve the last column that was sorted
            string sortExpression = ViewState["SortExpression"] as string;

            if (sortExpression != null)
            {
                // Check if the same column is being sorted
                // Reverse the sort direction if it's the same column
                if (sortExpression == column)
                {
                    string lastDirection = ViewState["SortDirection"] as string;
                    sortDirection = lastDirection == "ASC" ? "DESC" : "ASC";
                }
            }

            // Save the new sorting details in ViewState
            ViewState["SortDirection"] = sortDirection;
            ViewState["SortExpression"] = column;

            return sortDirection;
        }

        // Handle TextBoxSearch_TextChanged event for searching
        protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
        {
            // Filter the GridView based on the entered username
            string searchUsername = TextBoxSearch.Text.Trim();

            // Connect to the database and retrieve filtered transaction history
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($"SELECT * FROM TransactionHistory WHERE Username LIKE '%{searchUsername}%'", conn);
            SqlDataReader reader = null;

            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();

                GridViewTransactionHistory.DataSource = reader;
                GridViewTransactionHistory.DataBind();
            }
            catch (Exception ex)
            {
                // Handle exception
                Console.WriteLine(ex.Message);
            }
            finally
            {
                if (reader != null) reader.Close();
                if (cmd != null) cmd.Dispose();
                if (conn != null) conn.Close();
            }
        }

        protected void GridViewTransactionHistory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
