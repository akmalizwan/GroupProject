<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accrecordpage.aspx.cs" Inherits="wadproject.accrecordpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transaction History</title>
    <style type="text/css">
        body {
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #005ABE;
            color: #fff;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #FFCF70;
            color: #fff;
            cursor: pointer;
        }

        th:hover {
            background-color: #FFCF70;
        }

        form {
            padding: 20px;
        }

        h2 {
            margin-bottom: 20px;
        }

        #TextBoxSearch {
            width: 300px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            font-size: 16px;
            box-sizing: border-box;
        }
        .auto-style1 {
            margin-left: 644px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        

        <table>
            <tr>
                <td style="border-style: hidden">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="122px" ImageUrl="~/touch n go.png" Width="206px" />
            <h2 class="auto-style1">Transaction History</h2>
                </td>
            </tr>
            <tr>
                <td style="border-style: hidden">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="border-style: hidden">
                    <!-- Add a TextBox for searching -->
                    <asp:TextBox ID="TextBoxSearch" runat="server" placeholder="Search by Username" OnTextChanged="TextBoxSearch_TextChanged" AutoPostBack="true"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                </td>
            </tr>
            <tr>
                <td style="border-style: hidden">
                    <!-- Add the GridView with sorting enabled -->
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [TransactionHistory]"></asp:SqlDataSource>
                    <asp:GridView ID="GridViewTransactionHistory" runat="server" AutoGenerateColumns="False" DataKeyNames="TransactionID" AllowSorting="true" OnSorting="GridViewTransactionHistory_Sorting" OnSelectedIndexChanged="GridViewTransactionHistory_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="TransactionID" HeaderText="Transaction ID" SortExpression="TransactionID" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Bank" HeaderText="Bank" SortExpression="Bank" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                            <asp:BoundField DataField="Timestamp" HeaderText="Timestamp" SortExpression="Timestamp" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
