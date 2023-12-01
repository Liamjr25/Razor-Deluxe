<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookACar.aspx.cs" Inherits="RazorDeluxe.BookACar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <head><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        .col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

        label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

        .auto-style1 {
            height: 30px;
        }
        
 input {
	background: #222;	
	background: #222;	
	border: 1px solid #444;
	border-radius: 5px 0 0 5px;
	box-shadow: 0 2px 0 #000;
	color: #888;
	display: block;
	float: left;
	font-family: 'Cabin', helvetica, arial, sans-serif;
	font-size: 13px;
	font-weight: 400;
	height: 40px;
	margin: 0;
	padding: 0 10px;
	text-shadow: 0 -1px 0 #000;
	width: 200px;
            text-align: center;
        }

.ie  input {
	line-height: 40px;
}

 input::-webkit-input-placeholder {
   color: #888;
}

 input:-moz-placeholder {
   color: #888;
}

 input:focus {
	animation: glow 800ms ease-out infinite alternate;
	background: #222922;
	background: linear-gradient(#333933, #222922);
	border-color: #393;
	box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
	color: #efe;
	outline: none;
}

 input:focus::-webkit-input-placeholder { 
	color: #efe;
}

 input:focus:-moz-placeholder {
	color: #efe;
}

 .button {
	background: #222;
	background: linear-gradient(#333, #222);
	box-sizing: border-box;
	border: 1px solid #444;
	border-left-color: #000;
	border-radius: 0 5px 5px 0;
	box-shadow: 0 2px 0 #000;
	color: #fff;
	display: block;
	float: left;
	font-family: 'Cabin', helvetica, arial, sans-serif;
	font-size: 13px;
	font-weight: 400;
	height: 40px;
	line-height: 40px;
	margin: 0;
	padding: 0;
	position: relative;
	text-shadow: 0 -1px 0 #000;
	width: 80px;
}	

 .button:hover,
 .button:focus {
	background: #292929;
	background: linear-gradient(#393939, #292929);
	color: #5f5;
	outline: none;
}

 .button:active {
	background: #292929;
	background: linear-gradient(#393939, #292929);
	box-shadow: 0 1px 0 #000, inset 1px 0 1px #222;
	top: 1px;
}

@keyframes glow {
    0% {
		border-color: #393;
		box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
    }	
    100% {
		border-color: #6f6;
		box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;
    }
}
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
        </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            <td><div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"><asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblLastName" runat="server" Text="Surname"></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style6">
               <i class="fa fa-user"></i> <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
           
            <td class="auto-style6">
                <asp:Label ID="lblModel" runat="server" Text="Model"></asp:Label>
                <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtModel" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style6">
               <i class="fa fa-envelope"> <asp:Label ID="lblEMail" runat="server" Text="E-Mail"></asp:Label>
                <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEMail" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtPrice" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style6">
<asp:Label ID="lblBankCardNumber" runat="server" Text="Bank Card Number"></asp:Label>
<asp:TextBox ID="txtBankNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBankNumber" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
<asp:Label ID="lblBookingId" runat="server" Text="Booking Id"></asp:Label>
<asp:TextBox ID="txtBookingId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtBookingId" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            
            <td class="auto-style5">
                <asp:Label ID="lblMovieName" runat="server" Text="Vehicle Brand"></asp:Label>
                <asp:TextBox ID="txtVehicleBrand" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtVehicleBrand" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
<asp:Label ID="lblCardNumber0" runat="server" Text="Card Number"></asp:Label>
<asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
<asp:Label ID="lblCVV" runat="server" Text="CVV"></asp:Label>
<asp:TextBox ID="txtCVV" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCVV" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblBankName" runat="server" Text="Bank Name"></asp:Label>
                <asp:TextBox ID="txtBankName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtBankName" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style7">
<asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDate" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8">
    <asp:Label ID="lblNumberOfTickets" runat="server" Text="No. Of Tickets"></asp:Label>
    <asp:DropDownList ID="ddlTicketsList" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
<asp:Label ID="lblCarCode" runat="server" Text="CarCode"></asp:Label>
<asp:TextBox ID="txtCarCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCarCode" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblCarID" runat="server" Text="Car ID"></asp:Label>
                <asp:TextBox ID="txtCarID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCarID" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
<asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>
<asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <div class="container1">
        <div class="btn"><a href="#"><asp:Button ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click" Text="Add To Cart" Width="113px" BackColor="Transparent" /></a></div></div>
            </td>
        </tr>
           <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#666666" BorderStyle="Solid" BorderWidth="4px" CellPadding="3" CellSpacing="5" ForeColor="Black" GridLines="Both">
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <div class="auto-style2">
                            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("Images") %>' Width="400px" />
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
                            <asp:Label ID="CarsCodeLabel" runat="server" style="text-align: center" Text='<%# Eval("CarsCode") %>' />
                            <br />
                            Seats:
                            <asp:Label ID="SeatsLabel" runat="server" Text='<%# Eval("Seats") %>' />
                            <br />
                            FuelConsumption:
                            <asp:Label ID="FuelConsumptionLabel" runat="server" Text='<%# Eval("FuelConsumption") %>' />
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Button" />
                            <br />
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [BrandCompany], [Model ] AS Model_, [Year], [Transmission], [FuelType], [Power], [EngineSize], [StandardFeatures], [Topspeed], [Description], [Images], [CarsCode], [Seats], [FuelConsumption] FROM [Vehicles] WHERE ([CarsCode] = @CarsCode)">
                    <SelectParameters>
                        <asp:SessionParameter Name="CarsCode" SessionField="CarsCodeSession" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               </td>
            
            
        </tr>
           <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add To Cart" />
               </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
              <tr>
            <td class="auto-style3">
                
                 
                  </td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="VehicleBrand" HeaderText="VehicleBrand" SortExpression="VehicleBrand" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" SortExpression="CardNumber" />
                        <asp:BoundField DataField="CarCode" HeaderText="CarCode" SortExpression="CarCode" />
                        <asp:BoundField DataField="BankNumber" HeaderText="BankNumber" SortExpression="BankNumber" />
                        <asp:BoundField DataField="CVV" HeaderText="CVV" SortExpression="CVV" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
                        <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                        <asp:BoundField DataField="BookingID" HeaderText="BookingID" SortExpression="BookingID" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Booking] ([Id], [VehicleBrand], [Price], [CardNumber], [CarCode], [BankNumber], [CVV], [FirstName], [LastName], [EMail], [CarID], [Model], [BankName], [BookingID], [Date], [Total]) VALUES (@Id, @VehicleBrand, @Price, @CardNumber, @CarCode, @BankNumber, @CVV, @FirstName, @LastName, @EMail, @CarID, @Model, @BankName, @BookingID, @Date, @Total)" SelectCommand="SELECT [Id], [VehicleBrand], [Price], [CardNumber], [CarCode], [BankNumber], [CVV], [FirstName], [LastName], [EMail], [CarID], [Model], [BankName], [BookingID], [Date], [Total] FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [VehicleBrand] = @VehicleBrand, [Price] = @Price, [CardNumber] = @CardNumber, [CarCode] = @CarCode, [BankNumber] = @BankNumber, [CVV] = @CVV, [FirstName] = @FirstName, [LastName] = @LastName, [EMail] = @EMail, [CarID] = @CarID, [Model] = @Model, [BankName] = @BankName, [BookingID] = @BookingID, [Date] = @Date, [Total] = @Total WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:controlParameter ControlID="txtId" Name="Id" Type="Int32" />
                        <asp:controlParameter ControlID="txtVehicleBrand" Name="VehicleBrand" Type="String" />
                        <asp:controlParameter ControlID="txtPrice" Name="Price" Type="String" />
                        <asp:controlParameter ControlID="txtCardNumber" Name="CardNumber" Type="String" />
                        <asp:controlParameter ControlID="txtCarCode" Name="CarCode" Type="String" />
                        <asp:controlParameter ControlID="txtBankNumber" Name="BankNumber" Type="String" />
                        <asp:controlParameter ControlID="txtCVV" Name="CVV" Type="String" />
                        <asp:controlParameter ControlID="txtFirstName" Name="FirstName" Type="String" />
                        <asp:controlParameter ControlID="txtLastName" Name="LastName" Type="String" />
                        <asp:controlParameter ControlID="txtEMail" Name="EMail" Type="String" />
                        <asp:controlParameter ControlID="txtCarID" Name="CarID" Type="String" />
                        <asp:controlParameter ControlID="txtModel" Name="Model" Type="String" />
                        <asp:controlParameter ControlID="txtBankName" Name="BankName" Type="String" />
                        <asp:controlParameter ControlID="txtBookingID" Name="BookingID" Type="String" />
                        <asp:controlParameter ControlID="txtDate" Name="Date" Type="String" />
                        <asp:controlParameter ControlID="txtTotal" Name="Total" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="VehicleBrand" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="CardNumber" Type="String" />
                        <asp:Parameter Name="CarCode" Type="String" />
                        <asp:Parameter Name="BankNumber" Type="String" />
                        <asp:Parameter Name="CVV" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="EMail" Type="String" />
                        <asp:Parameter Name="CarID" Type="String" />
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="BankName" Type="String" />
                        <asp:Parameter Name="BookingID" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Total" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
</asp:Content>
