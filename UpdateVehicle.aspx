<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UpdateVehicle.aspx.cs" Inherits="RazorDeluxe.UpdateVehicle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <head>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="don.css" rel="don.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head><style type="text/css">



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

        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 48px;
        }
    </style>
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
            <td>Enter Vehicle ID
                <asp:TextBox ID="txtID0" runat="server" AutoPostBack="True" CssClass="txtbox" placeholder="ID" type="search"></asp:TextBox>
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
            <td>
                <asp:Label ID="lblID" runat="server" Text="ID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblBrand" runat="server" Text="BrandCompany"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblModel" runat="server" Text="Model"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtID" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtID" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>    
            </td>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtBrandCompany" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBrandCompany" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtModel" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtModel" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTransmission" runat="server" Text="Transmission"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFuelType" runat="server" Text="Fuel Type"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtYear" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtYear" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtTransmission" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTransmission" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtFuelType" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFuelType" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPower" runat="server" Text="Power"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblEngineSize" runat="server" Text="Engine Size"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblStandardFeatures" runat="server" Text="Standard Features"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtPower" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPower" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtEngineSize" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEngineSize" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtStandardFeatures" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtStandardFeatures" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTopspeed" runat="server" Text="Topspeed"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblImages" runat="server" Text="Images"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtTopspeed" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtTopspeed" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtDescription" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtDescription" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td>
                <asp:TextBox CssClass="txtbox" ID="txtImages" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtImages" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:FileUpload ID="fuImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblCarsCode" runat="server" Text="Cars Code"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblSeats" runat="server" Text="Seats"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblFuelConsumption" runat="server" Text="FuelConsumption"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:TextBox CssClass="txtbox" ID="txtCarsCode" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCarsCode" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style2">
                <asp:TextBox CssClass="txtbox" ID="txtSeats" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtSeats" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style2">
                <asp:TextBox CssClass="txtbox" ID="txtFuelConsumption" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtFuelConsumption" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
   <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button class="button" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
       
       
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DataBound="GridView1_DataBound" OnDataBound="GridView1_DataBound1">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Vehicles] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Vehicles] ([Id], [BrandCompany], [Model ], [Year], [Transmission], [FuelType], [Power], [EngineSize], [StandardFeatures], [Topspeed], [Description], [Images], [CarsCode], [Seats], [FuelConsumption]) VALUES (@Id, @BrandCompany, @Model_, @Year, @Transmission, @FuelType, @Power, @EngineSize, @StandardFeatures, @Topspeed, @Description, @Images, @CarsCode, @Seats, @FuelConsumption)" SelectCommand="SELECT [Id], [BrandCompany], [Model ] AS Model_, [Year], [Transmission], [FuelType], [Power], [EngineSize], [StandardFeatures], [Topspeed], [Description], [Images], [CarsCode], [Seats], [FuelConsumption] FROM [Vehicles] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Vehicles] SET [BrandCompany] = @BrandCompany, [Model ] = @Model_, [Year] = @Year, [Transmission] = @Transmission, [FuelType] = @FuelType, [Power] = @Power, [EngineSize] = @EngineSize, [StandardFeatures] = @StandardFeatures, [Topspeed] = @Topspeed, [Description] = @Description, [Images] = @Images, [CarsCode] = @CarsCode, [Seats] = @Seats, [FuelConsumption] = @FuelConsumption WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
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
        <SelectParameters>
            <asp:ControlParameter ControlID="txtID0" Name="Id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:controlParameter ControlID="txtBrandCompany" Name="BrandCompany" Type="String" />
            <asp:controlParameter ControlID="txtModel" Name="Model_" Type="String" />
            <asp:controlParameter ControlID="txtYear" Name="Year" Type="String" />
            <asp:controlParameter ControlID="txtTransmission" Name="Transmission" Type="String" />
            <asp:controlParameter ControlID="txtFuelType" Name="FuelType" Type="String" />
            <asp:controlParameter ControlID="txtPower" Name="Power" Type="String" />
            <asp:controlParameter ControlID="txtEngineSize" Name="EngineSize" Type="String" />
            <asp:controlParameter ControlID="txtStandardFeatures" Name="StandardFeatures" Type="String" />
            <asp:controlParameter ControlID="txtTopspeed" Name="Topspeed" Type="String" />
            <asp:controlParameter ControlID="txtDescription" Name="Description" Type="String" />
            <asp:controlParameter ControlID="txtImages" Name="Images" Type="String" />
            <asp:controlParameter ControlID="txtCarsCode" Name="CarsCode" Type="String" />
            <asp:controlParameter ControlID="txtSeats" Name="Seats" Type="String" />
            <asp:controlParameter ControlID="txtFuelConsumption" Name="FuelConsumption" Type="String" />
            <asp:controlParameter ControlID="txtID" Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
