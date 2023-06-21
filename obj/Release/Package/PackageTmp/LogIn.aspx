<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FarmCentral.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="auto-style6" style="align-content:center;color:white; background-color:#1d1e22; font-family:'Times New Roman', Times, serif">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 564px;
        }
        .auto-style4 {
            width: 564px;
            height: 65px;
        }
        .auto-style5 {
            height: 65px;
            width: 1526px;
        }
        .auto-style6 {
            width: 641px;
            height: 52px;
        }
        .auto-style10 {
            width: 4px;
        }
        .auto-style12 {
            height: 65px;
            width: 4px;
        }
        .auto-style13 {
            height: 52px;
            width: 4px;
        }
        .auto-style14 {
            width: 564px;
            height: 121px;
        }
        .auto-style15 {
            height: 121px;
            width: 4px;
        }
        .auto-style16 {
            height: 121px;
            width: 1526px;
        }
        .auto-style17 {
            width: 564px;
            height: 52px;
        }
        .auto-style18 {
            margin-left: 0px;
        }
        .auto-style19 {
            width: 1526px;
        }
        .auto-style20 {
            width: 1526px;
            height: 52px;
        }
        .Button
        {
            color:slategrey;
            font-family:'Times New Roman', Times, serif;
            width: 1526px;
            height: 52px;
            

        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style19">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <asp:Label ID="welcome" runat="server" Text="FARM CENTRAL MANAGEMENT SYSTEM" Font-Size="XX-Large" Font-Bold="true"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style16">
                        <asp:Label ID="selectType" runat="server" Text="LOGIN AS:" Font-Size="Medium" Font-Italic="true"></asp:Label>
                        <asp:RadioButtonList ID="userType" runat="server" CssClass="auto-style18" Font-Size="20pt" Height="135px" Width="597px">                            
                            <asp:ListItem Selected="True">Employee</asp:ListItem>
                            <asp:ListItem>Farmer</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                    </td>
                    <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label6" runat="server" Text="USER ID:" Height="76px" Font-Size="26pt" Width="527px" Visible="true"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="oldUserID" runat="server" Height="76px" Font-Size="26" Width="518px" Visible="true" OnTextChanged="oldEmployeeID_TextChanged" ></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label7" runat="server" Text="PASSWORD:" Height="76px" Font-Size="26pt" Width="527px" Visible="true"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                        
                        </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="oldPassword" runat="server" Height="76px" Font-Size="26" Width="518px" Visible="true" ></asp:TextBox></td> 
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="Button">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="loginButton0" Height="74px" Font-Size="30" runat="server" Text="LOGIN"  BorderStyle="Ridge" Width="334px" Visible="true" OnClick="loginButton_Click"/>
                    </td>
                    
                    <td class="auto-style10">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
