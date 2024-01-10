<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reload.aspx.cs" Inherits="GroupProject.WebForm4" %>

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
            height: 23px;
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
        .auto-style79 {
            width: 274px;
            height: 29px;
        }
        .auto-style80 {
            width: 411px;
            height: 37px;
        }
        .auto-style83 {
            height: 37px;
        }
        .auto-style89 {
            width: 274px;
            height: 119px;
        }
        .auto-style90 {
            width: 542px;
            height: 119px;
        }
        .auto-style92 {
            width: 274px;
            height: 23px;
        }
        .auto-style93 {
            width: 274px;
            height: 26px;
        }
        .auto-style94 {
            width: 598px;
            height: 119px;
            text-align: center;
        }
        .auto-style97 {
            width: 598px;
            height: 29px;
        }
        .auto-style98 {
            width: 598px;
            height: 26px;
        }
        .auto-style99 {
            width: 598px;
            height: 23px;
        }
        .auto-style100 {
            margin-left: 9px;
        }
    </style>
</head>
<body style="height: 583px; background-color:#005ABE">
    <form id="form1" runat="server" class="auto-style44">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style94">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Touch_'n_Go_logo.svg.png" />
                </td>
                <td class="auto-style89" style="text-align: center"></td>
                <td class="auto-style90" style="text-align: left; font-family: 'Dubai Medium'; font-size: 30px; font-weight: bold; font-style: normal; color: #FFFFFF;">&nbsp;BALANCE :<br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style98"></td>
                <td class="auto-style93"></td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style99"></td>
                <td class="auto-style92">
                    </td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style97">&nbsp;</td>
                <td class="auto-style79">
                    <asp:DropDownList ID="DropDownList5" runat="server" Width="444px">
                        <asp:ListItem>PLEASE SELECT BANK</asp:ListItem>
                        <asp:ListItem>AGRO BANK</asp:ListItem>
                        <asp:ListItem>BANK ISLAM</asp:ListItem>
                        <asp:ListItem>BANK RAKYAT</asp:ListItem>
                        <asp:ListItem>BSN</asp:ListItem>
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
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="297px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="153px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    Card number&nbsp;(Without Space or -)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CVV<br />
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="293px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style100"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Min. Amount 20" ForeColor="#FF3300" MaximumValue="9999999999999999" MinimumValue="20" Type="Double" Display="Dynamic" EnableClientScript="False"></asp:RangeValidator>
                    <br />
                    Amount :&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
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
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style76" style="border-style: none; background-color: #005ABE">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style67" Text="Cancel" Width="264px" Height="51px" BackColor="#FFCF70" BorderColor="Black" OnClick="Button1_Click1" BorderStyle="Solid" />
                </td>
                <td class="auto-style64" style="border-style: none; background-color: #0059BD">
                    <asp:Button ID="Button2" runat="server" Height="51px" OnClick="Button2_Click" Text="Button" Width="264px" BackColor="#FFCF70" BorderColor="Black" />
                </td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
