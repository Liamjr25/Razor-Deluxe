<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="RazorDeluxe.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style id="clock-animations"></style> <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
html,body{
            height: 100%;
            margin: 0;
            padding: 0;
            background-image:linear-gradient(#e7e7e7,#d7d7d7);
        }
        .clock-wrapper{
            position: absolute;
            top: 50%;
            right: 0;
            bottom: 50%;
            left: 0;
            width: 250px;
            height: 250px;
            margin: auto;
            padding: 5px;
            background-image: linear-gradient(#f7f7f7,#e0e0e0);
            border-radius: 50%;
            box-shadow: 0 10px 15px rgba(0,0,0,.15),0 2px 2px rgba(0,0,0,.2);

        }
        .clock-base{
            width: 250px;
            height: 250px;
            background-color: #eee;
            border-radius: 50%;
            box-shadow: 0 0 5px #eee;
        }
        .clock-dial {
            position: absolute;
            z-index: 1;
            top: 15px;
            left: 15px;
            width: 230px;
            height: 230px;
        }
        .clock-dial .clock-indicator {
            position: absolute;
            width: 2px;
            height: 4px;
            margin: 113px 114px;
            background-color: #ddd;
        }
        .clock-indicator:nth-child(1) {
            transform: rotate(30deg) translateY(-113px);
        }
        .clock-indicator:nth-child(2) {
            transform: rotate(60deg) translateY(-113px);
        }
        .clock-indicator:nth-child(3) {
            transform: rotate(90deg) translateY(-113px);
            background-color: #aaa;
        }
        .clock-indicator:nth-child(4) {
            transform: rotate(120deg) translateY(-113px);
        }
        .clock-indicator:nth-child(5) {
            transform: rotate(150deg) translateY(-113px);
        }
        .clock-indicator:nth-child(6) {
            transform: rotate(180deg) translateY(-113px);
            background-color: #aaa;
        }
        .clock-indicator:nth-child(7) {
            transform: rotate(210deg) translateY(-113px);
        }
        .clock-indicator:nth-child(8) {
            transform: rotate(240deg) translateY(-113px);
        }
        .clock-indicator:nth-child(9) {
            transform: rotate(270deg) translateY(-113px);
            background-color: #aaa;
        }
        .clock-indicator:nth-child(10) {
            transform: rotate(300deg) translateY(-113px);
        }
        .clock-indicator:nth-child(11) {
            transform: rotate(330deg) translateY(-113px);
        }
        .clock-indicator:nth-child(12) {
            transform: rotate(360deg) translateY(-113px);
            background-color: #c00;
        }
        .clock-hour{
            position: absolute;
            z-index: 2;
            top: 80px;
            left: 128px;
            width: 4px;
            height: 65px;
            background-color: #555;
            border-radius: 2px;
            box-shadow: 0 0 2px rgba(0,0,0,.2);
            transform-origin: 2px 50px;
            transition: .5s;
            -webkit-animation: rotate-hour 43200s linear infinite;
            -moz-animation: rotate-hour 43200s linear infinite;
        }
        .clock-minute{
            position: absolute;
            z-index: 3;
            top: 60px;
            left: 128px;
            width: 4px;
            height: 85px;
            background-color: #555;
            border-radius: 2px;
            box-shadow: 0 0 2px rgba(0,0,0,.2);
            transform-origin: 2px 70px;
            transition: .5s;
            -webkit-animation: rotate-minute 3600s linear infinite;
            -moz-animation: rotate-minute 3600s linear infinite;
        }
        .clock-second{
            position: absolute;
            z-index: 4;
            top: 20px;
            left: 129px;
            width: 2px;
            height: 130px;
            background-color: #a00;
            box-shadow: 0 0 2px rgba(0,0,0,.2);
            transform-origin: 1px 110px;
            transition: .5s;
            -webkit-animation: rotate-second 60s linear infinite;
            -moz-animation: rotate-second 60s linear infinite;
        }
        .clock-second:after{
            content: "";
            display: block;
            position: absolute;
            left: -5px;
            bottom: 14px;
            width: 8px;
            height: 8px;
            background-color: #a00;
            border: solid 2px #a00;
            border-radius: 50%;
            box-shadow: 0 0 3px rgba(0,0,0,.2);
        }
        .clock-center{
            position: absolute;
            z-index: 1;
            width: 150px;
            height: 150px;
            top: 55px;
            left: 55px;
            background-image: linear-gradient(#e3e3e3,#f7f7f7);
            border-radius: 50%;
            box-shadow: inset 0 -1px 0 #fafafa, inset 0 1px 0 #e3e3e3;
        }
        .clock-center:after{
            content: "";
            display: block;
            width: 20px;
            height: 20px;
            margin: 65px;
            background-color: #ddd;
            border-radius: 50%;
        }
                                               .auto-style4 {
                                                   height: 121px;
                                               }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1"><title>Bootstrap Example</title>
               <head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="don.css" rel="don.css" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

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


</body>
            </td>
            <td class="auto-style1">   <div class="clock-wrapper">
        <div class="clock-base">
            <div class="clock-dial">
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
            <div class="clock-indicator"></div>
        </div>
            <div class="clock-hour"></div>
            <div class="clock-minute"></div>
            <div class="clock-second"></div>
            <div class="clock-center"></div>
        </div>
    </div></td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                <img id="myImage" onclick="changeImage()" src="Img/avatar.png" width="100" height="100"/>
                
                <p style="text-shadow: 2px 2px 8px #aaff00;">
                    Click the avatar to change colors.</p>

<script>
    function changeImage() {
        var image = document.getElementById('myImage');
        if (image.src.match("Img/avatar.jpg")) {
            image.src = "Img/avatar.png";
        } else {
            image.src = "Img/avatar.jpg";
        }
    }
</script>
           </td>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                </td>
        </tr>
         <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                Welcome To Razor Deluxe
                <asp:Label ID="lblUser" runat="server"></asp:Label></td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                </td>
            <td  
</td>
            <td class="auto-style1">
                <div class="container">
                </div>
      
      <!--=============== MAIN JS ===============-->
      </td>
        </tr>
        </table><script src="main.js"></script>
</asp:Content>
