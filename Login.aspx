<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RazorDeluxe.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>html {
  height: 100%;
}
       
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
}

.login-box {
  position: absolute;
  top: 60%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}
    
.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}
         .auto-style1 {
             height: 22px;
         }
         /* Header */
.large-header {
  position: relative;
  width: 100%;
  background: transparent;
  overflow: hidden;
  background-size: cover;
  background-position: center center;
  z-index: -1;
}
#large-header {
  background-image: url("Img/motorsport10.png");
}
.main-title {
  position: absolute;
  margin: 0;
  padding: 0;
  color: #f9f1e9;
  text-align: center;
  top: 50%;
  left: 50%;
  -webkit-transform: translate3d(-50%, -50%, 0);
  transform: translate3d(-50%, -50%, 0);
}
.demo-1 .main-title {
  text-transform: uppercase;
  font-size: 4.2em;
  letter-spacing: 0.1em;
}
.main-title .thin {
  font-weight: 200;
}
@media only screen and (max-width: 768px) {
  .demo-1 .main-title {
    font-size: 3em;
  }
}
     </style>
    <table style="width: 154%;">
        
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
         <div id="large-header" class="large-header">
  <canvas id="demo-canvas">
</canvas>
    <h1 class="main-title"> <span class="thin"></span></h1>
</div>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Username], [Password], [FirstName], [LastName] FROM [Login]"></asp:SqlDataSource></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <div class="login-box">
                    <h2>Login</h2>
                    <div class="user-box">
                        &nbsp;<asp:Label ID="lblUsername" runat="server" Text="Username" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>    
                    </div>
                    <div class="user-box">
                        &nbsp;<asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>    
                    </div>
                    <a href="#"><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="Transparent" style="color: red" BorderStyle="Dotted" Height="24px" Width="65px" />
                    </a>
                    <br />
                    <a href="# ">Need an Account?</a> <a href="# ">Forget Password ?</a></div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
      
        <tr>
            <td>
                
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
     
    </table>
    <!-- partial:index.partial.html -->
   
<!-- partial -->
  <script src='https://www.marcoguglie.it/Codepen/AnimatedHeaderBg/demo-1/js/EasePack.min.js'></script>
<script src='https://www.marcoguglie.it/Codepen/AnimatedHeaderBg/demo-1/js/rAF.js'></script>
<script src='https://www.marcoguglie.it/Codepen/AnimatedHeaderBg/demo-1/js/TweenLite.min.js'></script><script  src="./script.js"></script>

</asp:Content>
