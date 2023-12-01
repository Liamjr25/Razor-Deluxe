<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UpdateBooking.aspx.cs" Inherits="RazorDeluxe.UpdateBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="don.css" rel="don.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head> <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>


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
            .auto-style4 {
                height: 21px;
            }
            .auto-style5 {
                height: 23px;
                width: 712px;
            }
            .auto-style6 {}
            .auto-style7 {
                height: 21px;
                width: 712px;
            }
            .auto-style8 {
                height: 63px;
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
            <td class="auto-style5"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        
         <tr>
            <td class="auto-style8">
                <asp:Label ID="lblID0" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="txtEnterId" runat="server" placeholder="Enter Username" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEnterId" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
          <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style5"><asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
                <asp:TextBox ID="txtId" placeholder="Enter Username" runat="server"></asp:TextBox>
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
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
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
                <asp:Label ID="lblEMail" runat="server" Text="E-Mail"></asp:Label>
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
<asp:Label ID="lblBankCardNumber" runat="server" Text="BankCardNumber"></asp:Label>
<asp:TextBox ID="txtBankNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBankNumber" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
<asp:Label ID="lblBookingId" runat="server" Text="BookingId"></asp:Label>
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
<asp:Label ID="lblCardNumber0" runat="server" Text="CardNumber"></asp:Label>
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

<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
<asp:Label ID="lblDate0" runat="server" Text="Date"></asp:Label>
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
                <asp:Label ID="lblCarID" runat="server" Text="CarID"></asp:Label>
                <asp:TextBox ID="txtCarID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCarID" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
<asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>
<asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <div class="container1">
        <div class="btn"><a href="#"><asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="113px" BackColor="Transparent" /></a></div></div>
            </td>
        </tr>
          <tr>
            <td class="auto-style7"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
         <tr>
            <td class="auto-style6" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnDataBound="GridView1_DataBound">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [VehicleBrand], [Price], [CardNumber], [CarCode], [BankNumber], [CVV], [FirstName], [LastName], [EMail], [CarID], [Model], [BankName], [BookingID], [Date], [Total] FROM [Booking] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [Booking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Booking] ([Id], [VehicleBrand], [Price], [CardNumber], [CarCode], [BankNumber], [CVV], [FirstName], [LastName], [EMail], [CarID], [Model], [BankName], [BookingID], [Date], [Total]) VALUES (@Id, @VehicleBrand, @Price, @CardNumber, @CarCode, @BankNumber, @CVV, @FirstName, @LastName, @EMail, @CarID, @Model, @BankName, @BookingID, @Date, @Total)" UpdateCommand="UPDATE [Booking] SET [VehicleBrand] = @VehicleBrand, [Price] = @Price, [CardNumber] = @CardNumber, [CarCode] = @CarCode, [BankNumber] = @BankNumber, [CVV] = @CVV, [FirstName] = @FirstName, [LastName] = @LastName, [EMail] = @EMail, [CarID] = @CarID, [Model] = @Model, [BankName] = @BankName, [BookingID] = @BookingID, [Date] = @Date, [Total] = @Total WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
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
                        <asp:Parameter Name="BookingID" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Total" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtEnterId" Name="Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:controlParameter ControlID="txtVehicleBrand" Name="VehicleBrand" Type="String" />
                        <asp:controlParameter ControlID="txtPrice" Name="Price" Type="String" />
                        <asp:controlParameter ControlID="txtCardNumber" Name="CardNumber" Type="String" />
                        <asp:controlParameter ControlID="txtCarCode" Name="CarCode" Type="String" />
                        <asp:controlParameter ControlID="txtBankNumber" Name="BankNumber" Type="String" />
                        <asp:controlParameter ControlID="txtCVV" Name="CVV" Type="String" />
                        <asp:controlParameter ControlID="txtFirstName" Name="FirstName" Type="String" />
                        <asp:controlParameter ControlID="txtLastName" Name="LastName" Type="String" />
                        <asp:controlParameter ControlID="txtEmail" Name="EMail" Type="String" />
                        <asp:controlParameter ControlID="txtCarID" Name="CarID" Type="String" />
                        <asp:controlParameter ControlID="txtModel" Name="Model" Type="String" />
                        <asp:controlParameter ControlID="txtBankName" Name="BankName" Type="String" />
                        <asp:controlParameter ControlID="txtBookingId" Name="BookingID" Type="String" />
                        <asp:controlParameter ControlID="txtDate" Name="Date" Type="String" />
                        <asp:controlParameter ControlID="txtTotal" Name="Total" Type="String" />
                        <asp:controlParameter ControlID="txtId" Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </td>
        </tr>
         <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
