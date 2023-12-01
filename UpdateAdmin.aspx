<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UpdateAdmin.aspx.cs" Inherits="RazorDeluxe.UpdateAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
	              border-left: 1px solid #000;
                  border-right: 1px solid #444;
                  border-top: 1px solid #444;
                  border-bottom: 1px solid #444;
                  background: #222;
                  box-sizing: border-box;
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
                  top: 0px;
                  left: 0px;
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
     </style>
      
<<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
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
            <td>Enter ID
                <asp:TextBox CssClass="txtbox" ID="txtID" runat="server" placeholder="Enter Admin ID" type="search" AutoPostBack="True" ></asp:TextBox>
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
                <asp:TextBox CssClass="txtbox" ID="txtId1" runat="server" placeholder="?" type="search"></asp:TextBox>
            </td>
            <td> <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><asp:TextBox CssClass="txtbox" ID="txtUsername" runat="server" placeholder="Enter Username" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td> <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox CssClass="txtbox" ID="txtPassword" runat="server" placeholder="xxx" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator></td>
            <td> <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox CssClass="txtbox" ID="txtFirstName" runat="server" placeholder="xxx" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox CssClass="txtbox" ID="txtLastName" runat="server" placeholder="xxx" type="search"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button class="button" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1"  style="margin-bottom: 1px" OnDataBound="GridView1_DataBound">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Login] ([Id], [Username], [Password], [FirstName], [LastName]) VALUES (@Id, @Username, @Password, @FirstName, @LastName)" SelectCommand="SELECT [Id], [Username], [Password], [FirstName], [LastName] FROM [Login] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Login] SET [Username] = @Username, [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtID" Name="Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:controlParameter ControlID="txtUsername" Name="Username" Type="String" />
                        <asp:controlParameter ControlID="txtPassword" Name="Password" Type="String" />
                        <asp:controlParameter ControlID="txtFirstName" Name="FirstName" Type="String" />
                        <asp:controlParameter ControlID="txtLastName" Name="LastName" Type="String" />
                        <asp:controlParameter ControlID="txtId1" Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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
