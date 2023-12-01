<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllCars.aspx.cs" Inherits="RazorDeluxe.AllCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        .auto-style1 {
            text-align: center;
        }

    </style>
    <table style="width:100%;">
        <tr>
            <td>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Menu ID="Menu2" runat="server" BackColor="#33CCFF" Font-Names="Harlow Solid Italic" Font-Size="20pt" ForeColor="White" Orientation="Horizontal" style="text-align: center" Width="100%">
                            <DynamicHoverStyle BackColor="Maroon" />
                            <DynamicMenuStyle BackColor="#3399FF" />
                            <Items>
                                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                                <asp:MenuItem Text="All Cars" Value="All Cars" NavigateUrl="~/AllCars.aspx"></asp:MenuItem>
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
                        <td>
                            <asp:DataList ID="DataList1" runat="server" CellSpacing="20" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" BorderColor="#666666" BorderStyle="Solid">
                                <EditItemStyle  BorderColor="#666666" BorderStyle="Solid" />
                                <ItemTemplate>
                                    <div class="auto-style1">
                                        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("Images") %>' Width="150px" />
                                        <br />
                                        Id:
                                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                        <br />
                                        BrandCompany:
                                        <asp:Label ID="BrandCompanyLabel" runat="server" Text='<%# Eval("BrandCompany") %>' />
                                        <br />
                                        Model_:
                                        <asp:Label ID="Model_Label" runat="server" Text='<%# Eval("Model_") %>' />
                                        <br />
                                        Year:
                                        <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                                        <br />
                                        Transmission:
                                        <asp:Label ID="TransmissionLabel" runat="server" Text='<%# Eval("Transmission") %>' />
                                        <br />
                                        FuelType:
                                        <asp:Label ID="FuelTypeLabel" runat="server" Text='<%# Eval("FuelType") %>' />
                                        <br />
                                        Power:
                                        <asp:Label ID="PowerLabel" runat="server" Text='<%# Eval("Power") %>' />
                                        <br />
                                        EngineSize:
                                        <asp:Label ID="EngineSizeLabel" runat="server" Text='<%# Eval("EngineSize") %>' />
                                        <br />
                                        StandardFeatures:
                                        <asp:Label ID="StandardFeaturesLabel" runat="server" Text='<%# Eval("StandardFeatures") %>' />
                                        <br />
                                        Topspeed:
                                        <asp:Label ID="TopspeedLabel" runat="server" Text='<%# Eval("Topspeed") %>' />
                                        <br />
                                        Description:
                                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                        <br />
                                        CarsCode:
                                        <asp:Label ID="CarsCodeLabel" runat="server" Text='<%# Eval("CarsCode") %>' />
                                        <br />
                                        Seats:
                                        <asp:Label ID="SeatsLabel" runat="server" Text='<%# Eval("Seats") %>' />
                                        <br />
                                        FuelConsumption:
                                        <asp:Label ID="FuelConsumptionLabel" runat="server" Text='<%# Eval("FuelConsumption") %>' />
                                        <br />
                                        <br />
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [BrandCompany], [Model ] AS Model_, [Year], [Transmission], [FuelType], [Power], [EngineSize], [StandardFeatures], [Topspeed], [Description], [Images], [CarsCode], [Seats], [FuelConsumption] FROM [Vehicles]"></asp:SqlDataSource>
                        </td>
                    </tr>
          
                </table>
            </td>
          
        </tr>
      
        </tr>
    </table>
</asp:Content>
