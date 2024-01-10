<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReloadPages.aspx.cs" Inherits="PROJECT_WAD.ReoladPages" MasterPageFile="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .body {
            background-color: #0026ff;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style33 {
            width: 542px;
        }
        .auto-style34 {
            width: 542px;
            height: 26px;
        }
        .auto-style44 {
            height: 188px;
            margin-bottom: 19px;
        }
        .auto-style45 {
            width: 411px;
        }
        .auto-style48 {
            width: 411px;
            height: 26px;
        }
        .auto-style51 {
            height: 26px;
        }
        .auto-style58 {
            margin-right: 0px;
            margin-left: 0px;
        }
        .auto-style64 {
            width: 223px;
            height: 26px;
        }
        .auto-style67 {
            margin-left: 0px;
        }
        .payment-container {
            border: 2px solid #000; /* Add a border style and color */
            padding: 10px; /* Add some padding for better appearance */
        }
        .auto-style74 {
            width: 542px;
            height: 29px;
        }
        .auto-style76 {
            width: 353px;
            height: 26px;
        }
        .auto-style77 {
            width: 620px;
        }
        .auto-style78 {
            width: 620px;
            height: 26px;
        }
        .auto-style79 {
            width: 620px;
            height: 29px;
        }
        .auto-style80 {
            width: 411px;
            height: 37px;
        }
        .auto-style83 {
            height: 37px;
        }
        .auto-style85 {
            width: 443px;
        }
        .auto-style86 {
            width: 443px;
            height: 26px;
        }
        .auto-style87 {
            width: 443px;
            height: 29px;
        }
        .auto-style88 {
            width: 443px;
            height: 119px;
        }
        .auto-style89 {
            width: 620px;
            height: 119px;
        }
        .auto-style90 {
            width: 542px;
            height: 119px;
        }
        .auto-style91 {
            margin-right: 0px;
            margin-left: 30px;
        }
    </style>
</head>
<body style="height: 583px; background-color:#005ABE">
    <form id="form1" runat="server" class="auto-style44">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style88">
                    <asp:Image ID="Image3" runat="server" Height="115px" ImageUrl="~/touch n go.png" Width="219px" />
                </td>
                <td class="auto-style89" style="text-align: center">&nbsp;</td>
                <td class="auto-style90" style="text-align: left; font-family: 'Dubai Medium'; font-size: 30px; font-weight: bold; font-style: normal; color: #FFFFFF;">&nbsp;BALANCE :<br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style86"></td>
                <td class="auto-style78"></td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style85"></td>
                <td class="auto-style77">
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="&quot;Please select your bank&quot; " ForeColor="White" OnServerValidate="ValidateExpirationDate"></asp:CustomValidator>
                    </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style87">&nbsp;</td>
                <td class="auto-style79">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="618px" BackColor="#CCCCCC" CssClass="auto-style67">
                        <asp:ListItem>PLEASE SELECT BANK</asp:ListItem>
                        <asp:ListItem>AGRO BANK</asp:ListItem>
                        <asp:ListItem>BANK ISLAM</asp:ListItem>
                        <asp:ListItem>BANK RAKYAT</asp:ListItem>
                        <asp:ListItem>BSN </asp:ListItem>
                        <asp:ListItem>CIMB</asp:ListItem>
                        <asp:ListItem>HONG LEONG</asp:ListItem>
                        <asp:ListItem>MAYBANK</asp:ListItem>
                        <asp:ListItem>PUBLIC BANK BERHAD</asp:ListItem>
                        <asp:ListItem>RHB BANK</asp:ListItem>
                        <asp:ListItem>UOB MALAYSIA BANK</asp:ListItem>
                        <asp:ListItem>TNG E WALLET</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style74">
                    &nbsp;</td>
            </tr>
            </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style48"></td>
                <td style="border: 4px solid #C0C0C0; background-color: #FFFFFF" colspan="2" rowspan="11">
    <span style="font-size: 18px; font-weight: normal;">CREDIT / DEBIT CARD</span><hr style="color: #C0C0C0" /> <!-- Add this line --><br />
                    <br />
                    First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="First Name is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Last Name is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="276px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style91" Width="235px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    Card number&nbsp;(Without Space or -)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CVV<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Card Number is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Card number" ForeColor="#FF3300" MaximumValue="9999999999999999" MinimumValue="1000000000000000" Type="Double" Display="Dynamic"></asp:RangeValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="CVV is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Invalid CVV" ForeColor="#FF3300" MaximumValue="999" MinimumValue="001" Type="Double"></asp:RangeValidator>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" Width="321px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style58" Width="178px"></asp:TextBox>
                    <br />
                    <br />
                    Valid until&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="193px">
                        <asp:ListItem>Month</asp:ListItem>
                        <asp:ListItem>JANUARY</asp:ListItem>
                        <asp:ListItem>FEBRUARY</asp:ListItem>
                        <asp:ListItem>MARCH</asp:ListItem>
                        <asp:ListItem>APRIL</asp:ListItem>
                        <asp:ListItem>MAY</asp:ListItem>
                        <asp:ListItem>JUNE</asp:ListItem>
                        <asp:ListItem>JULY</asp:ListItem>
                        <asp:ListItem>AUGUST</asp:ListItem>
                        <asp:ListItem>SEPTEMBER</asp:ListItem>
                        <asp:ListItem>OCTOBER</asp:ListItem>
                        <asp:ListItem>NOVEMBER</asp:ListItem>
                        <asp:ListItem>DECEMBER</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="184px">
                        <asp:ListItem>Year</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        <asp:ListItem>2029</asp:ListItem>
                        <asp:ListItem>2030</asp:ListItem>
                        <asp:ListItem>2031</asp:ListItem>
                        <asp:ListItem>2032</asp:ListItem>
                        <asp:ListItem>2033</asp:ListItem>
                        <asp:ListItem>2034</asp:ListItem>
                        <asp:ListItem>2035</asp:ListItem>
                        <asp:ListItem>2036</asp:ListItem>
                        <asp:ListItem>2037</asp:ListItem>
                        <asp:ListItem>2038</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DropDownList3" ErrorMessage="&quot;Please select a valid expiration month.&quot; " ForeColor="#FF3300" OnServerValidate="ValidateExpirationDate"></asp:CustomValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="DropDownList4" ErrorMessage="&quot;Please select a valid expiration year.&quot; " ForeColor="#FF3300" OnServerValidate="ValidateExpirationDate"></asp:CustomValidator>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Amount is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Min. Amount 20" ForeColor="#FF3300" MaximumValue="9999999999999999" MinimumValue="20" Type="Double" Display="Dynamic"></asp:RangeValidator>
                    <br />
                    Amount :&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Width="321px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style51"></td>
            </tr>
            <tr>
                <td class="auto-style80"></td>
                <td class="auto-style83"></td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style51"></td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style51"></td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TransactionHistory]"></asp:SqlDataSource>
                </td>
                <td class="auto-style76" style="border-style: none; background-color: #005ABE">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style67" Text="Cancel" Width="264px" Height="51px" BackColor="Yellow" BorderColor="Yellow" />
                </td>
                <td class="auto-style64" style="border-style: none; background-color: #0059BD">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style67" Text="Submit" Width="261px" BorderColor="Yellow" BorderStyle="None" Height="50px" BackColor="Yellow" OnClick="Button2_Click" PostBackUrl="~/accrecordpage.aspx" />
                </td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
