<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="responsive.RunSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags-->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Colorlib Templates"/>
    <meta name="author" content="Colorlib"/>
    <meta name="keywords" content="Colorlib Templates"/>

    <!-- Title Page-->
    <title>New User Registration Guide</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all"/>
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all"/>

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all"/>
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <%--  <title>Main page</title>--%>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet"/>  <!--we need to css class file name as reference here -->
<%--    center--%>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
         <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Lets Fill your Details</h2>
                    <form method="POST">
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Owner's Name" name="name"/>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Pet's Name" name="name"/>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Breed" name="name"/>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="text" placeholder="Birthdate" name="birthday"/>
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="gender">
                                    <option disabled="disabled" selected="selected">Gender</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                    <option>Other</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="email" placeholder="Email" name="email"/>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Phone" name="phone"/>
                        </div>
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit">Submit</button>
                            <button class="btn btn--pill btn--green" type="submit">Reset</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>

    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
</body>
</html>
