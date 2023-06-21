<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewFarmers.aspx.cs" Inherits="FarmCentral.viewFarmers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="auto-style6" style="align-content:center;color:white; background-color:#1d1e22; font-family:'Times New Roman', Times, serif">
<head runat="server">
    <title></title>
</head>
   <body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>    
                     <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="backButton" runat="server" Height="42px" Text="GO BACK" Font-Bold="true" Font-Size="X-Large" Width="173px" OnClick="backButton_Click" />
                </td>
               <td>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <br />
                        <br />
                    <asp:Label ID="farmers" runat="server" Text="BELOW IS A LIST OF EXISTING FARMERS:" Font-Bold="true" Font-Size="17pt"></asp:Label>
                        <br />
                        <br />
                        <br />
                    <asp:GridView ID="farmerView" runat="server" Width="756px" Height="338px" CellPadding="4" Font-Size="Large" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
