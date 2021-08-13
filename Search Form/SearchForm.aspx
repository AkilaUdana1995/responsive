<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchForm.aspx.cs" Inherits="responsive.Search_Form.SearchForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lets Make your appoinment</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
     <link href="NavBarForSearch.css" rel="stylesheet" />
<%--    C:\Users\DVM COMPUTERS\source\repos\responsive\cardpayment\cardPayCSS.css--%>
    <style type="text/css">
        .auto-style1 {
            left: 1px;
            top: 0px;
        }
    </style>

    <script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
    </script>
  
</head>
<body>

   <div class="topnav" id="myTopnav" >
  <a href="#home" class="active">Home Page</a>
  <a href="https://localhost:44339/login-form-14/CovidUpdate.aspx">Announcements</a>
  <a href="#contact">Need Help?</a>
  <%--<div class="dropdown">
    <button class="dropbtn">Dropdown
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </div>--%>
  <a href="#about">About</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
</div>










    <div class="s130">
            <form  id="form1" runat="server">
        <div class="inner-form">
          <div class="input-field first-wrap">

            <div class="svg-wrapper">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
              </svg>
            </div>
        <asp:TextBox ID="txtSearch" runat="server" placeholder="Please Enter your current City"></asp:TextBox>

           <%-- <input id="search" type="text" placeholder="What are you looking for?" />--%>
          </div>
          <div class="input-field second-wrap">
           <asp:Button ID="BtnSearch" class="btn-search" runat="server" Text="SEARCH" OnClick="BtnSearch_Click" CssClass="auto-style1" />
          <%--  <button class="btn-search" type="button">SEARCH</button>--%>
          </div>
        </div>
        <span class="info">Press Enter To Go!!</span>
      </form>
    </div>
   <%-- <form id="form1" runat="server">
        <div>

        </div>
    </form>--%>
    <script src="js/extention/choices.js"></script>
</body>
</html>
