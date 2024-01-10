<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="records.aspx.cs" Inherits="GroupProject.WebForm5" %>

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
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        

        <table>
            <tr>
                <td style="border-style: hidden">
            <h2 class="auto-style1">Account Records</h2>
                </td>
            </tr>
            <tr>
                <td style="border-style: hidden">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Touch_'n_Go_logo.svg.png" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Account] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Account] ([name], [email], [phoneNum], [password], [accBalance]) VALUES (@name, @email, @phoneNum, @password, @accBalance)" SelectCommand="SELECT * FROM [Account]" UpdateCommand="UPDATE [Account] SET [name] = @name, [email] = @email, [phoneNum] = @phoneNum, [password] = @password, [accBalance] = @accBalance WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phoneNum" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="accBalance" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phoneNum" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="accBalance" Type="Double" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="border-style: hidden">
                    <!-- Add a TextBox for searching -->
            SEARCH<br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>name</asp:ListItem>
                <asp:ListItem>email</asp:ListItem>
                <asp:ListItem Value="phoneNum">phone number</asp:ListItem>
                <asp:ListItem Value="password"></asp:ListItem>
                <asp:ListItem Value="accBalance">account balance</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="border-style: hidden">
                    <!-- Add the GridView with sorting enabled -->
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="phoneNum" HeaderText="phoneNum" SortExpression="phoneNum" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="accBalance" HeaderText="accBalance" SortExpression="accBalance" />
                </Columns>
            </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
