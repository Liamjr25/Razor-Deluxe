<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DeleteBooking.aspx.cs" Inherits="RazorDeluxe.DeleteBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <head>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="don.css" rel="don.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head> <style>


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
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

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
            <td><asp:TextBox CssClass="txtbox" ID="txtId" runat="server" placeholder="What are you looking for?" type="search"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtId" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator> </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td> <asp:Button class="button" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
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
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Booking] ([Id], [VehicleBrand], [Price], [CardNumber], [CarCode], [BankNumber], [CVV], [FirstName], [LastName], [EMail], [CarID], [Model], [BankName]) VALUES (@Id, @VehicleBrand, @Price, @CardNumber, @CarCode, @BankNumber, @CVV, @FirstName, @LastName, @EMail, @CarID, @Model, @BankName)" SelectCommand="SELECT [Id], [VehicleBrand], [Price], [CardNumber], [CarCode], [BankNumber], [CVV], [FirstName], [LastName], [EMail], [CarID], [Model], [BankName] FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [VehicleBrand] = @VehicleBrand, [Price] = @Price, [CardNumber] = @CardNumber, [CarCode] = @CarCode, [BankNumber] = @BankNumber, [CVV] = @CVV, [FirstName] = @FirstName, [LastName] = @LastName, [EMail] = @EMail, [CarID] = @CarID, [Model] = @Model, [BankName] = @BankName WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="txtId" Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
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
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
