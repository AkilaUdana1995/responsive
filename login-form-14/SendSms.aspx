@modal ResponsiveWebAPI.Models.RESDTO

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendSms.aspx.cs" Inherits="responsive.login_form_14.SendSms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Send Sms</title>
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

    <form id="form1" runat="server">

        <div>
            <div>
            <section class="ftco-section">
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Lets Make your Appoinment</h2>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(images/6.png);">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Please Enter message</h3>
			      		</div>
								
			      	</div>
							<form action="#" class="signin-form">


								 <div class="form-group mb-3">
			      			<%--<label class="label" for="name">Username</label>--%>
                              <asp:TextBox ID="TxtMobile" runat="server" placeholder="Enter Phone Number" required></asp:TextBox>
<%--<asp:TextBox ID="txtUsername" runat="server" placeholder="Username" required ></asp:TextBox>--%>
			      			<%--<input type="text" class="form-control" placeholder="Username" required>--%>
			      		</div>

			      		<div class="form-group mb-3">
			      			<%--<label class="label" for="name">Username</label>--%>
                              <asp:TextBox ID="txtMessage" runat="server" placeholder="Type your Message" required TextMode="MultiLine"></asp:TextBox>
<%--<asp:TextBox ID="txtUsername" runat="server" placeholder="Username" required ></asp:TextBox>--%>
			      			<%--<input type="text" class="form-control" placeholder="Username" required>--%>
			      		</div>


		          


		            <div class="form-group">
<%--		            	<button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign In</button>--%>
		            <asp:Button ID="btnSendSms" runat="server" Text="Confirm and Pay" class="form-control btn btn-primary rounded submit px-3" OnClick="btnSendSms_Click"  />
					</div>

		            <asp:Button ID="btnViewSMS" runat="server" Text="View Reply From Doctor" class="form-control btn btn-primary rounded submit px-3" OnClick="btnViewSMS_Click"  />
						@using	(Html.BeginForm()) {
								@Html.TextBox("txtView", @TempData["txtView"])
								}
                    <asp:TextBox ID="txtView"  runat="server" placeholder="doctors reply"></asp:TextBox>
								<%--@Html.TextBoxFor(model => model.UserDefaultDate)--%>
								@Html.TextBox("txtView", @TempData["txtView"])
								
		          </form>

		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
        </div>
        </div>
    </form>
     <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
