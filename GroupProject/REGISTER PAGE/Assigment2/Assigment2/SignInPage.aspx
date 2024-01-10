<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="Assigment2.SignInPage" %>

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
        <h2>REGISTER WITH TOUCH &amp; GO</h2>
       
        <table class="auto-style1">
            <tr>
                <td>Name :<asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="ErrorMessage" ></asp:RequiredFieldValidator>

                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Email :<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="ErrorMessage"></asp:RegularExpressionValidator>

                </td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>Phone :
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
       <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
ErrorMessage="Invalid phone number" ValidationExpression="^\d{10}$" CssClass="ErrorMessage"></asp:RegularExpressionValidator>


                </td>
                <td>&nbsp;</td>
            </tr>

                  <tr>
          <td>Password :<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>

  <asp:RequiredFieldValidator ID="rvfAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Password is required" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
              <br />

          </td>
          <td>&nbsp;</td>
      </tr>
                      </tr>

                <tr>
        <td>Confirm Password :<asp:TextBox ID="txtPass" runat="server"></asp:TextBox>

<asp:RequiredFieldValidator ID="rvfPass" runat="server" ControlToValidate="txtPass" ErrorMessage="Confirm Password is required" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
            <br />

        </td>
        <td>&nbsp;</td>
    </tr>
        </table>
        &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#FFCF70" />
       <asp:ValidationSummary ID="valSummary" runat="server" DisplayMode="BulletList" HeaderText="Error Summary:" CssClass="ErrorMessage" />


    </form>
</body>
</html>
