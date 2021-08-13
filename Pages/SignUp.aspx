<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="responsive.Samplecase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta charset="utf-8"/>
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css"/>

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="NavBarForsignUp.css"/>
   

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



     <div class="topnav" id="myTopnav" >
	  	<a class="navbar-brand" href="#"><span><img alt ="Logo" src="Images/6.png" height="30" width="30" /></span>Mypetty</a>

  <a href="#home" class="active">Home Page</a>
  <a href="#news">Announcements</a>
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



	</head>
<body>

    <div class="wrapper" style="background-image: url('images/2.png');">
<%--        <asp:Button ID="Button1" runat="server" Text="Button" />--%>

			<div class="inner">
				<div class="image-holder">
					<img src="images/1.png" alt=""/>

   <p class="text-center">Not a member?<asp:HyperLink ID="HpGoToLogin" runat="server" NavigateUrl="https://localhost:44339/login-form-14/LoginFormFinal.aspx">Sign in</asp:HyperLink>

				</div>

                <form id="form1"  runat="server">
<%--                    <asp:Button ID="Button1" runat="server" Text="Button" />--%>
<%--                    <asp:Label ID="LblGotoSign In" runat="server" Text="Already Have an Account"></asp:Label>--%>

<%--                    <asp:HyperLink ID="HpGoToLogin" runat="server"  NavigateUrl="https://localhost:44339/login-form-14/LoginFormFinal.aspx" ForeColor="Lime">Sign In</asp:HyperLink>--%>

					<h3>Registration Form</h3>

    <%--<form id="form1" runat="server">--%>
    
        <div class="form-group">
            
        <asp:Label ID="Label1" runat="server" Text="Owner's NIC"></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtId" runat="server" CssClass="auto-style1" placeholder="enter NIC" required></asp:TextBox>
        </div>
                    
                </br>    


                    <div class="form-wrapper">
            <asp:Label ID="Label2" runat="server" Text="Owner Name"></asp:Label>
            <asp:TextBox ID="txtOwnername" runat="server" CssClass="auto-style1"></asp:TextBox>
                        	
               </div>

                    </br>

                     <div class="form-wrapper">
            <asp:Label ID="Label4" runat="server" Text="Pet's Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtPetname" runat="server" CssClass="auto-style1"></asp:TextBox>
                        	
               </div>

</br>

         <div class="form-wrapper">
        <asp:Label ID="Label3" runat="server" Text="Breed of Pet"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtBreed" runat="server" CssClass="auto-style1" Height="21px"></asp:TextBox>
       </div>
                    
</br>
                    <div class="form-wrapper">
            <asp:Label ID="Label5" runat="server" Text="Owners Email"></asp:Label>&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1" placeholder="youremail@gmail.com" required></asp:TextBox> 	
               </div>
</br>
                     <div class="form-wrapper">
            <asp:Label ID="Label6" runat="server" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="txtTp" runat="server" CssClass="auto-style1" placeholder="+94766641017" required></asp:TextBox> 	
               </div>

           </br>         
                     <div class="form-wrapper">

            <asp:Label ID="Label7" runat="server" Text="User name"></asp:Label> &nbsp;&nbsp;
            <asp:TextBox ID="txtusername" runat="server" CssClass="auto-style1" placeholder="Enter Combination of A-Z/0-9"></asp:TextBox> 	
               </div>
</br>
                    
                     <div class="form-wrapper">
            <asp:Label ID="Label8" runat="server" Text="Enter Password"></asp:Label>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="auto-style1"  placeholder="A-Z/0-9 With Special Charactor"></asp:TextBox> 	
               </div>

         </br>           
                     <div class="form-wrapper">
            <asp:Label ID="Label9" runat="server" Text="Confirm passWord"></asp:Label>
            <asp:TextBox ID="txtreenterpassword" runat="server" CssClass="auto-style1" placeholder="Re-Enter Password"></asp:TextBox> 	
               </div>
        </br>            
                    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Register" BackColor="#66FF33" />
                        <i class="zmdi zmdi-arrow-right"></i>
                        &nbsp;
        <asp:Button ID="cancel" runat="server" Text="cancel" OnClick="cancel_Click" BackColor="Red" />
           
                   </div>

    </form>
           </div>

           </div> 
      
</body>
</html>
