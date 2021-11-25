<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginFormFinal.aspx.cs" Inherits="responsive.login_form_14.LoginFormFinal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Lets Logged In</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet"/>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	
	<link rel="stylesheet" href="css/style.css"/>
		<link rel="stylesheet" href="NavBar.css"/>
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
  <a href="https://localhost:44339/defaultform.aspx" class="active">Home Page</a>
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
    <form id="form1" runat="server">
        <div>
            <section class="ftco-section">
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Lets Log In to your Account</h2>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(images/4.jpg);">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Sign In</h3>
			      		</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="https://www.facebook.com/" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="https://twitter.com/i/flow/login" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
									</p>
								</div>
			      	</div>
							<form action="#" class="signin-form">

			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Username</label>
<asp:TextBox ID="txtUsername" runat="server" placeholder="Username" required ></asp:TextBox>
<%--<asp:TextBox ID="AAA" runat="server" placeholder="Username" required ></asp:TextBox>--%>

			      			<%--<input type="text" class="form-control" placeholder="Username" required>--%>
			      		</div>


		            <div class="form-group mb-3">
		            	<label class="label" for="password">Password</label>
						<asp:TextBox ID="txtpassword" runat="server" placeholder="PassWord" required  ></asp:TextBox>
		             <%-- <input type="password" class="form-control" placeholder="Password" required>--%>
		            </div>


		            <div class="form-group">
<%--		            	<button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign In</button>--%>
		            <asp:Button ID="btnLogin" runat="server" Text="Log In" class="form-control btn btn-primary rounded submit px-3" OnClick="btnLogin_Click" />
					</div>


		            <div class="form-group d-md-flex">
		            	<div class="w-50 text-left">
			            	<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="https://localhost:44339/dashboard/ForgotPassword.aspx">Forgot Password</a>
									</div>
		            </div>
		          </form>
		          <p class="text-center">Not a member?<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://localhost:44339/Pages/SignUp.aspx">Sign Up</asp:HyperLink>
<%--<a data-toggle="tab" href="#">Sign Up</a>--%></p>  <!--need to fix-->
						</div>
		      </div>
				</div>
			</div>
		</div>
	</section>
        </div>
    </form>
    <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
    <p class="text-center">
        &nbsp;</p>
</body>
</html>
