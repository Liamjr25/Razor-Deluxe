<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="RazorDeluxe.CartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td>
            <asp:Menu ID="Menu2" runat="server" BackColor="#33CCFF" Font-Names="Harlow Solid Italic" Font-Size="20pt" ForeColor="White" Orientation="Horizontal" style="text-align: center" Width="100%">
                <DynamicHoverStyle BackColor="Maroon" />
                <DynamicMenuStyle BackColor="#3399FF" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/AllCars.aspx" Text="All Cars" Value="All Cars"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/BookACar.aspx" Text="Booking" Value="Booking"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/CartPage.aspx" Text="CartPage" Value="CartPage"></asp:MenuItem>
                    <asp:MenuItem Text="Search" Value="Search">
                        <asp:MenuItem NavigateUrl="~/SearchByBrand.aspx" Text="By Brand" Value="By Brand"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/SearchBookingByID.aspx" Text="By Booking ID" Value="By Booking ID"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/SearchByID.aspx" Text="Car By ID" Value="Car By ID"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/SearchByYear.aspx" Text="Car By Year" Value="Car By Year"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Showcase" Value="Showcase"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/About.aspx" Text="About Us" Value="About Us"></asp:MenuItem>
                    <asp:MenuItem Text="Card Details" Value="Card Details"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Login.aspx" Text="Login" Value="Login"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <br />
                    VehicleBrand:
                    <asp:Label ID="VehicleBrandLabel" runat="server" Text='<%# Eval("VehicleBrand") %>' />
                    <br />
                    CarCode:
                    <asp:Label ID="CarCodeLabel" runat="server" Text='<%# Eval("CarCode") %>' />
                    <br />
                    Model:
                    <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    Total:
                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [VehicleBrand], [Model], [Price], [CarCode], [Total] FROM [Booking]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnDataBound="Page_Load">
                <Columns>
                    <asp:BoundField DataField="VehicleBrand" HeaderText="VehicleBrand" SortExpression="VehicleBrand" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="CarCode" HeaderText="CarCode" SortExpression="CarCode" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
