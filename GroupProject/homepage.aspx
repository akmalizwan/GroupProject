<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="GroupProject.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="SignInPage.aspx" />
    <style type="text/css">
        form {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 550px;
    width: 100%;
}
        body{
            margin-top: 150px;
            display: flex;
    justify-content: center;
    align-items: center;
    background-color: #0D4FA1
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            background-color: #DDE9F5;
        }
        .auto-style4 {
            background-color: #0E47A1;
            width: 214px;
        }
        .auto-style5 {
            background-color: #DDE9F5;
            width: 214px;
        }
        .auto-style6 {
            background-color: #0E47A1;
            width: 949px;
            text-align: center;
        }
        .auto-style7 {
            color: #FF0000;
            background-color: #0E47A1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Touch_'n_Go_logo.svg.png" />
                    </td>
                    <td class="auto-style6" style="color: #FFFFFF; font-size: x-large; font-weight: bolder; font-style: normal; font-family: 'Open Sans'">HOME PAGE</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Account Records" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Hi,</td>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Wallet Balance</td>
                    <td class="auto-style3" colspan="2">RM<asp:Label ID="Label2" runat="server" Text="0.00"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Top Up" OnClick="Button1_Click" />
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
