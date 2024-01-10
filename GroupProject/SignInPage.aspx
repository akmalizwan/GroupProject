<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="GroupProject.SignInPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="SignInPage.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>SIGN IN WITH TOUCH &amp; GO</h2>
       
        <table class="auto-style1">
       
            <tr>
                <td>Email Or Phone :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvEmailPhone" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Or Phone is required" CssClass="ErrorMessage" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <br />
        <asp:RegularExpressionValidator ID="revEmailPhone" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  CssClass="ErrorMessage" EnableClientScript="False"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="revEmailPhone0" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid phone format" ValidationExpression="\d{10}$"  CssClass="ErrorMessage" EnableClientScript="False"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>

                  <tr>
          <td>Password :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

  <asp:RequiredFieldValidator ID="rvfPass" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required" CssClass="ErrorMessage" EnableClientScript="False"></asp:RequiredFieldValidator>
              <br />

          </td>
          <td>&nbsp;</td>
      </tr>
                      </tr>

                </table>
        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <br />
        Don&#39;t have an account?
        <a href="SignUpPage.aspx">
        <asp:Label ID="Label2" runat="server" Text="Sign Up"></asp:Label>
        </a>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
        <br />
       <asp:ValidationSummary ID="valSummary" runat="server" DisplayMode="BulletList" HeaderText="Error Summary:" CssClass="ErrorMessage" />
    </form>
</body>
</html>

