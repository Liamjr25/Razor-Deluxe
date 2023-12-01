<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DeleteByCarsCode.aspx.cs" Inherits="RazorDeluxe.DeleteByCarsCode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <head>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="don.css" rel="don.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head><style>


 input {
	background: #222;	
	background: linear-gradient(#333, #222);	
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
              .auto-style1 {
                  height: 23px;
              }
     </style></head>
      
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="javascript:void(0)">Logo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="AdminHome.aspx">Admin Home</a>
        </li>

           <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Add</a>
         <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AddNewAdmin.aspx">Add New Admin</a></li>
            <li><a class="dropdown-item" href="AddVehicle.aspx">Add New Vehicle</a></li>
             <li><a class="dropdown-item" href="BookACar.aspx">Booking</a></li>
          </ul>

           <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Delete By</a>
         <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="DeleteAdmin.aspx">Admin</a></li>
         
             <li><a class="dropdown-item" href="DeleteBooking.aspx">Booking</a></li>
             <li><a class="dropdown-item" href="DeleteByCarsCode.aspx">By Cars Code</a></li>
             <li><a class="dropdown-item" href="DeleteByModel.aspx">By Model</a></li>
          </ul>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Update</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="UpdateAdmin.aspx">Admin</a></li>
            <li><a class="dropdown-item" href="UpdateVehicle.aspx">Vehicle</a></li>
              <li><a class="dropdown-item" href="UpdateBooking.aspx">Booking</a></li>
          </ul>
        </li>
      </ul>
      
      <form class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Search">
        <button class="btn btn-primary" type="button">Search</button>
      </form>
    </div>
  </div>
</nav>

    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
               <asp:Label ID="lblDelete" runat="server" Text="CarsCode:"></asp:Label>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtCarsCode" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtCarsCode" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>    
                <asp:Button class="button" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="BrandCompany" HeaderText="BrandCompany" SortExpression="BrandCompany" />
                        <asp:BoundField DataField="Model_" HeaderText="Model_" SortExpression="Model_" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                        <asp:BoundField DataField="Transmission" HeaderText="Transmission" SortExpression="Transmission" />
                        <asp:BoundField DataField="FuelType" HeaderText="FuelType" SortExpression="FuelType" />
                        <asp:BoundField DataField="Power" HeaderText="Power" SortExpression="Power" />
                        <asp:BoundField DataField="EngineSize" HeaderText="EngineSize" SortExpression="EngineSize" />
                        <asp:BoundField DataField="StandardFeatures" HeaderText="StandardFeatures" SortExpression="StandardFeatures" />
                        <asp:BoundField DataField="Topspeed" HeaderText="Topspeed" SortExpression="Topspeed" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Images" HeaderText="Images" SortExpression="Images" />
                        <asp:BoundField DataField="CarsCode" HeaderText="CarsCode" SortExpression="CarsCode" />
                        <asp:BoundField DataField="Seats" HeaderText="Seats" SortExpression="Seats" />
                        <asp:BoundField DataField="FuelConsumption" HeaderText="FuelConsumption" SortExpression="FuelConsumption" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [BrandCompany], [Model ] AS Model_, [Year], [Transmission], [FuelType], [Power], [EngineSize], [StandardFeatures], [Topspeed], [Description], [Images], [CarsCode], [Seats], [FuelConsumption] FROM [Vehicles]" DeleteCommand="DELETE FROM Vehicles WHERE (CarsCode = @CarsCode)" InsertCommand="INSERT INTO [Vehicles] ([Id], [BrandCompany], [Model ], [Year], [Transmission], [FuelType], [Power], [EngineSize], [StandardFeatures], [Topspeed], [Description], [Images], [CarsCode], [Seats], [FuelConsumption]) VALUES (@Id, @BrandCompany, @Model_, @Year, @Transmission, @FuelType, @Power, @EngineSize, @StandardFeatures, @Topspeed, @Description, @Images, @CarsCode, @Seats, @FuelConsumption)" UpdateCommand="UPDATE [Vehicles] SET [BrandCompany] = @BrandCompany, [Model ] = @Model_, [Year] = @Year, [Transmission] = @Transmission, [FuelType] = @FuelType, [Power] = @Power, [EngineSize] = @EngineSize, [StandardFeatures] = @StandardFeatures, [Topspeed] = @Topspeed, [Description] = @Description, [Images] = @Images, [CarsCode] = @CarsCode, [Seats] = @Seats, [FuelConsumption] = @FuelConsumption WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:controlParameter ControlID="txtCarsCode" Name="CarsCode" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="BrandCompany" Type="String" />
                        <asp:Parameter Name="Model_" Type="String" />
                        <asp:Parameter Name="Year" Type="String" />
                        <asp:Parameter Name="Transmission" Type="String" />
                        <asp:Parameter Name="FuelType" Type="String" />
                        <asp:Parameter Name="Power" Type="String" />
                        <asp:Parameter Name="EngineSize" Type="String" />
                        <asp:Parameter Name="StandardFeatures" Type="String" />
                        <asp:Parameter Name="Topspeed" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Images" Type="String" />
                        <asp:Parameter Name="CarsCode" Type="String" />
                        <asp:Parameter Name="Seats" Type="String" />
                        <asp:Parameter Name="FuelConsumption" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BrandCompany" Type="String" />
                        <asp:Parameter Name="Model_" Type="String" />
                        <asp:Parameter Name="Year" Type="String" />
                        <asp:Parameter Name="Transmission" Type="String" />
                        <asp:Parameter Name="FuelType" Type="String" />
                        <asp:Parameter Name="Power" Type="String" />
                        <asp:Parameter Name="EngineSize" Type="String" />
                        <asp:Parameter Name="StandardFeatures" Type="String" />
                        <asp:Parameter Name="Topspeed" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Images" Type="String" />
                        <asp:Parameter Name="CarsCode" Type="String" />
                        <asp:Parameter Name="Seats" Type="String" />
                        <asp:Parameter Name="FuelConsumption" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
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
    </table>
</asp:Content>
