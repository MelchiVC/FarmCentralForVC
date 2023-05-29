<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeHome.aspx.cs" Inherits="FarmCentral.EmployeeHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="auto-style6" style="align-content:center;color:white; background-color:#1d1e22; font-family:'Times New Roman', Times, serif">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 405px;
        }
        .auto-style3 {
            width: 781px;
        }
        .addFarmer
        {
             font-family:'Times New Roman', Times, serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="logOut" runat="server" Height="45px" Text="LOGOUT" font-bold="true" Font-Size="Large" Width="141px" OnClick="logOut_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="EmployeeName" runat="server" Text="Welcome Employee -  " Font-Size="30pt" Font-Bold="true"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
              
                <td>
                    <asp:Button ID="addFarmer" Font-Bold="true" runat="server" Height="40px" Text="ADD NEW FARMER" Font-Size="17pt" Width="259px" OnClick="addFarmer_Click" />
                    <asp:Button ID="viewFarmer" Font-Bold="true" runat="server" Height="40px" Text="VIEW FARMER LIST" Font-Size="17pt" Width="259px" OnClick="viewFarmer_Click" />

                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="FarmersData0" runat="server" Text="Filter By:" Font-Bold="true" Font-Size="17pt"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="FarmersData" runat="server" Font-Bold="true" Text="List of Products" Font-Size="17pt"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    Farmer<br />
                    <asp:DropDownList ID="selectedFarmer" runat="server" Height="41px" Width="204px" Font-Size="Medium" DataSourceID="SqlDataSource1" DataTextField="farmerID" DataValueField="farmerID">
                        <asp:ListItem Selected="True" Value="*">All</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="allFarmers" runat="server" Text="Show All" Font-Size="Medium" Checked="True" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FarmCentralConnectionString %>" SelectCommand="SELECT DISTINCT [farmerID] FROM [Product]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    Product Type<br />
                    <asp:DropDownList ID="selectedProductType" runat="server" Height="41px" Font-Size="Medium" Width="204px" DataSourceID="SqlDataSource2" DataTextField="productType" DataValueField="productType">
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                    <asp:CheckBox ID="allPoductTypes" runat="server" text="Show All" Font-Size="Medium" Checked="True"/>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FarmCentralConnectionString %>" SelectCommand="SELECT DISTINCT [productType] FROM [Product]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="allDates" runat="server" text="Show All" Checked="True"/>
                    <br />
                    <br />
                    From -&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Calendar ID="fromDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    <br />
                    To -
                    <asp:Calendar ID="toDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    <br />
                    <asp:Button ID="filter" runat="server" Height="61px" Text="SEARCH" Font-Size="Medium" Font-Bold="true" Width="168px" OnClick="filter_Click" />
                </td>
                <td class="auto-style3">

                    <asp:GridView ID="GridView1" runat="server" Width="845px" Height="424px" Font-Size="Large" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
