<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="GroupProject.SignInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="SignUpPage.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h2>REGISTER WITH TOUCH &amp; GO</h2>
       
        <table class="auto-style1">
            <tr>
                <td>Name :<asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="ErrorMessage" EnableClientScript="False" ></asp:RequiredFieldValidator>

                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Email :<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="ErrorMessage" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <br />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="ErrorMessage" EnableClientScript="False"></asp:RegularExpressionValidator>

                </td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>Phone :
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" CssClass="ErrorMessage" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <br />
       <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
ErrorMessage="Invalid phone number" ValidationExpression="^\d{10}$" CssClass="ErrorMessage" EnableClientScript="False"></asp:RegularExpressionValidator>


                </td>
                <td>&nbsp;</td>
            </tr>

                  <tr>
          <td>Password :<asp:TextBox ID="txtPass" runat="server"></asp:TextBox>

  <asp:RequiredFieldValidator ID="rvfAge" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" CssClass="ErrorMessage" EnableClientScript="False"></asp:RequiredFieldValidator>
              <br />

          </td>
          <td>&nbsp;</td>
      </tr>
                      </tr>

                <tr>
        <td>Confirm Password :<asp:TextBox ID="txtRepass" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
            <br />

        </td>
        <td>&nbsp;</td>
    </tr>
        </table>
        &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#FFCF70" />
        <br />
        Already have an account?
        <a href="SignInPage.aspx">
        <asp:Label ID="Label2" runat="server" Text="Sign In"></asp:Label>
        </a>
        <br />
       <asp:ValidationSummary ID="valSummary" runat="server" DisplayMode="BulletList" HeaderText="Error Summary:" CssClass="ErrorMessage" EnableClientScript="False" />


    </form>
</body>
</html>
