<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="afterPayment.aspx.cs" Inherits="responsive.Search_Form.afterPayment" %>

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










    
            <form  id="form1" runat="server">
                <div class="s130">
        <div class="inner-form">
          <div class="input-field first-wrap">

            <div class="svg-wrapper">
            <p>&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Your Payment was Success!</p>
                            
                          <p><small class="form-text text-muted">   &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspGet your pet ready to tour</small></p>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button1" runat="server" Text="Go to home" OnClick="Button1_Click" CssClass="cvk" />

             </div>
             <%-- <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
              </svg>--%>
             
           <%-- <input id="search" type="text" placeholder="What are you looking for?" />--%>
          </div>
         
        </div>
                  </div>


      </form>
    
   <%-- <form id="form1" runat="server">
        <div>

        </div>
    </form>--%>
    <script src="js/extention/choices.js"></script>
</body>
</html>

