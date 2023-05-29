<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addFarmer.aspx.cs" Inherits="FarmCentral.addFarmer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="auto-style6" style="align-content:center;color:white; background-color:#1d1e22; font-family:'Times New Roman', Times, serif">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 577px;
        }
        .auto-style3 {
            width: 577px;
            height: 273px;
        }
        .auto-style4 {
            height: 273px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="homeButton" runat="server" Height="60px" Text="GO BACK" Font-Bold="true" Font-Size="X-Large" Width="232px" OnClick="homeButton_Click" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="CREATE NEW FARMER" Font-Size="30" Font-Bold="true"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="USERNAME:" Font-Size="X-Large"></asp:Label>
                &nbsp;&nbsp;
                    <asp:TextBox ID="farmerID" runat="server" Height="35px" Width="263px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="NAME:" Font-Size="X-Large"></asp:Label>
                    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="farmerName" runat="server" Width="263px" Height="30px"></asp:TextBox>
                    &nbsp;
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="SURNAME:" Font-Size="X-Large"></asp:Label>
                    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="farmerSurname" runat="server" Width="262px" Height="31px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="PASSWORD:" Font-Size="X-Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="farmerPassword" runat="server" Width="263px" Height="32px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="insertFarmer" runat="server" Height="42px" Text="ADD FARMER" Font-Size="X-Large" Width="273px" OnClick="insertFarmer_Click" />
                    <asp:Button ID="clearText" runat="server" Height="42px" Text="CLEAR" Font-Size="X-Large" Width="273px" OnClick="clearButton_Click" />

                    </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
