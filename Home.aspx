<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RazorDeluxe.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 30px;
        }
            body{
    background-color:#000000;
    }
        .auto-style4 {
            text-align: center;
            height: 23px;
        }
        .bg {
        background-color: #4d4d4d;
        }


        .parallax {
            /* The image used */
            background-image: url('img/supercar7.png');
            height: 239%;
              /* Create the parallax scrolling effect */
  background-attachment: fixed;
  
  background-repeat: no-repeat;
  background-size: cover;

        }

        .auto-style5 {
            height: 195px;
        }

        .auto-style6 {
            text-align: center;
        }
        nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #4b4b4b
  padding: 20px;
}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
    <table style="width:100%;">
        <tr>
            <td> <asp:Menu ID="Menu2" runat="server" BackColor="#33CCFF" Font-Names="Harlow Solid Italic" Font-Size="20pt" ForeColor="White" Orientation="Horizontal" style="text-align: center" Width="100%">
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
                        </asp:Menu></td>
        </tr>
        <tr>
            <td class="auto-style2">Search For Car<asp:TextBox ID="txtName" runat="server" AutoPostBack="True" Height="21px" onfocus="if(this.value =='Enter Title of Movie') this.value='';" Text="Enter Car Brand Company name" Width="126px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">
             </td>
        </tr>
         <tr>
            <td class="auto-style3"><nav>
    
      Filter By:<asp:DropDownList ID="ddlPower" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Power" DataValueField="Power" Height="42px" Width="115px">
                <asp:ListItem>--Power--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Power] FROM [Vehicles]"></asp:SqlDataSource>
                <asp:DropDownList ID="ddlBrand" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="BrandCompany" DataValueField="BrandCompany" Height="42px" Width="145px">
                    <asp:ListItem>--Brand--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [BrandCompany] FROM [Vehicles]"></asp:SqlDataSource>
    
  </nav>
                We are happy to bring to you HIGH quality suppilies and LOW prices on wholesale goods.
                <br />
                We supply 53% of Cape Towns Motor Vehicle Market.
  </td>
        </tr>
         <tr>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:DataList ID="DataList1" runat="server" CellSpacing="90" DataKeyField="Id" DataSourceID="SqlDataSource3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" Height="350px" Width="400px">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Images") %>' Height="300px" Width="400px" />
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
                        Power:
                        <asp:Label ID="PowerLabel" runat="server" Text='<%# Eval("Power") %>' />
                        <br />
                        CarsCode:
                        <asp:Label ID="CarsCodeLabel" runat="server" Text='<%# Eval("CarsCode") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [BrandCompany], [Model ] AS Model_, [Year], [Power], [Images], [CarsCode] FROM [Vehicles] WHERE (([Power] = @Power) OR ([BrandCompany] = @BrandCompany) OR ([Model ] = @Model_))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlPower" Name="Power" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddlBrand" Name="BrandCompany" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="txtName" Name="Model_" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
         <tr>
            <td class="auto-style1"></td>
        </tr>
         <tr>
            <td><video autoplay muted style="width: 100%; height: 100%" >
  <source src="Img/LamborghiniF.mp4" type="video/mp4">
  <source src="Img/LamborghiniF.ogg" type="video/ogg">
  
</video>
</td>
             </div>
        </tr>
    
         <tr>
            <td class="auto-style4">Choose From Our
                <asp:Label ID="lblLambo" runat="server" Text="Lamborghini"></asp:Label>
             </td>
              <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" CellSpacing="15" DataSourceID="SqlDataSource4" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DataList2_ItemCommand">
                    <ItemTemplate>
                        <div class="auto-style6">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="300px" ImageUrl='<%# Eval("Images") %>' Width="500px" />
                            <br />
                            BrandCompany:
                            <asp:Label ID="BrandCompanyLabel" runat="server" Text='<%# Eval("BrandCompany") %>' />
                            <br />
                            Model_:
                            <asp:Label ID="Model_Label" runat="server" Text='<%# Eval("Model_") %>' />
                            <br />
                            Power:
                            <asp:Label ID="PowerLabel" runat="server" Text='<%# Eval("Power") %>' />
                            <br />
                            Description:
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                            <br />
                            <br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BrandCompany], [Model ] AS Model_, [Power], [Images], [Description] FROM [Vehicles] WHERE ([BrandCompany] = @BrandCompany)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblLambo" Name="BrandCompany" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                  </td>
                   <tr>
            <td><video autoplay muted style="width: 100%; height: 100%" >
  <source src="Img/MaseratiQuattroporte.mp4" type="video/mp4">
  <source src="Img/MaseratiQuattroporte.ogg" type="video/ogg">
  
</video></td>
        </tr>
        </tr>
        </tr>
                   <tr>
            <td class="auto-style5">
                <div class="parallax">
                </div>
                       </td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td></td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td class="auto-style4">Choose From Our
                <asp:Label ID="lblKoenigsegg" runat="server" Text="Koenigsegg"></asp:Label></td>
        </tr>
                   <tr>
            <td>
                <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource5" RepeatColumns="4" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="auto-style6">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="300px" ImageUrl='<%# Eval("Images") %>' Width="400px" />
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
                            Power:
                            <asp:Label ID="PowerLabel" runat="server" Text='<%# Eval("Power") %>' />
                            <br />
                            StandardFeatures:
                            <asp:Label ID="StandardFeaturesLabel" runat="server" Text='<%# Eval("StandardFeatures") %>' />
                            <br />
                            <br />
                            <br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Model ] AS Model_, [Year], [Transmission], [Power], [StandardFeatures], [Images] FROM [Vehicles] WHERE ([BrandCompany] = @BrandCompany)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblKoenigsegg" Name="BrandCompany" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                       </td>
        </tr>
                   <tr>
            <td>
                <video autoplay muted style="width: 100%; height: 100%" >
  <source src="Img/RollsRoyceBlack.mp4" type="video/mp4">
  <source src="Img/RollsRoyceBlack.ogg" type="video/ogg">
  
</video></td>
        </tr>
                   <tr>
            <td>
                &nbsp;</td>
        </tr>
                   <tr>
            <td>
                &nbsp;</td>
        </tr>
                   <tr>
            <td>
                &nbsp;</td>
        </tr>
                   <tr>
            <td>
                &nbsp;</td>
        </tr>
                   <tr>
            <td>
                &nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td>&nbsp;</td>
        </tr>
        </table>

</asp:Content>
