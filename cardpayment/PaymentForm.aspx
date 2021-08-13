<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentForm.aspx.cs" Inherits="paymentGateway.cardpayment.PaymentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Credit Card Payment Form Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="cardPayCSS.css"/>

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

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
<%--     <form id="form1" runat="server">--%>
     

    <div class="topnav" id="myTopnav" >
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

    <form id="form2" runat="server">
        <div class="container">
             <div class="row">
        <div class="col-xs-12 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h3 class="text-center">Payment Details</h3>
                        <img class="img-responsive cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png"/>
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD NUMBER</label>
                                    <div class="input-group">
                                        <%--<input type="tel" class="form-control" placeholder="Valid Card Number" />--%>
                                        <asp:TextBox ID="txtCardNumber" runat="server"  class="form-control" placeholder="Valid Card Number"></asp:TextBox>
                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                              <asp:TextBox ID="txtExPMM" runat="server" class="form-control" placeholder="MM"></asp:TextBox>
                              <asp:TextBox ID="txtExYY" runat="server" class="form-control" placeholder="YYYY"></asp:TextBox>
                                    <%--                                    <input type="tel" class="form-control" placeholder="MM / YY" />--%>
                                </div>

                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label>CV CODE</label>
                                     <asp:TextBox ID="txtCvc" runat="server" class="form-control" placeholder="CVC"></asp:TextBox>
                                    <%--                                    <input type="tel" class="form-control" placeholder="CVC" />--%>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                     <asp:TextBox ID="txtCardOwner" runat="server" class="form-control" placeholder="First    Last"></asp:TextBox>
                                    <%--                                    <input type="text" class="form-control" placeholder="Card Owner Names" />--%>
                                </div>


                                <div class="form-group">
                                    <label>EMAIL</label>
                                     <asp:TextBox ID="txteMail" runat="server" class="form-control" placeholder="Your eMail"></asp:TextBox>
                                    <%--                                    <input type="text" class="form-control" placeholder="Card Owner Names" />--%>
                                </div>

                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-12">
                           <asp:Button ID="BtnSumbit" runat="server" Text="Process payment" class="btn btn-warning btn-lg btn-block" OnClick="BtnSumbit_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblchargeConfirm" runat="server" Text="You will Be charged non Refundable Pre Appoinment Fee of 1$" BorderColor="#FFCC00" BorderStyle="Solid" CssClass="alert-warning" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:Label>
                            <%--                            <button class="btn btn-warning btn-lg btn-block">Process payment</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
<!-- Credit Card Payment Form - END -->
        </div>
    </form>

</body>
</html>
