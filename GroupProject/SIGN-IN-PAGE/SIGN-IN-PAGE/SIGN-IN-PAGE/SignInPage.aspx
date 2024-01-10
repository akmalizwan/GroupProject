<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="SIGN_IN_PAGE.SignInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        h2{
            text-align: center;
        }

        body{
            font-family: Arial, sans-sarif;
            background-color: #0D47A1;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh
        }

        form{
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        label{
            display: block;
            margin-bottom: 8px;
        }

        input{
            width: calc(100% - 16px);
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        .ErrorMessage{
            color: #ff0000;
            margin-top: -8px;
            margin-bottom: 16px;
        }

        button{
            background-color: #89CFF0;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>SIGN IN WITH TOUCH &amp; GO</h2>
       
        <table class="auto-style1">
       
            <tr>
                <td>Email Or Phone :<asp:TextBox ID="txtEmailPhone" runat="server" OnTextChanged="txtEmailPhone_TextChanged"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvEmailPhone" runat="server" ControlToValidate="txtEmailPhone" ErrorMessage="Email Or Phone is required" CssClass="ErrorMessage" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <br />
        <asp:RegularExpressionValidator ID="revEmailPhone" runat="server" ControlToValidate="txtEmailPhone" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  CssClass="ErrorMessage" EnableClientScript="False"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="revEmailPhone0" runat="server" ControlToValidate="txtEmailPhone" ErrorMessage="Invalid phone format" ValidationExpression="\d{10}$"  CssClass="ErrorMessage" EnableClientScript="False"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>

                  <tr>
          <td>Password :<asp:TextBox ID="txtPass" runat="server" OnTextChanged="txtPass_TextChanged"></asp:TextBox>

  <asp:RequiredFieldValidator ID="rvfPass" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" CssClass="ErrorMessage" EnableClientScript="False"></asp:RequiredFieldValidator>
              <br />

          </td>
          <td>&nbsp;</td>
      </tr>
                      </tr>

                </table>
        &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#FFCF70" />
       <asp:ValidationSummary ID="valSummary" runat="server" DisplayMode="BulletList" HeaderText="Error Summary:" CssClass="ErrorMessage" />
    </form>
</body>
</html>

