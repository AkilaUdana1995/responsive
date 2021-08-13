 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="defaultform.aspx.cs" Inherits="responsive.defaultform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Main page</title>

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
        <div>
                <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only" >Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span> 
                                    <span class="icon-bar"></span>  <!--I created Icon bar here-->
                            </button>
                            <a class="navbar-brand" href="defaultform.aspx"><span><img alt ="Logo" src="Images/14.png" height="30" width="30" /></span>Mypetty</a>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="active"><a href="defaultform.aspx">Home</a></li>
                                <li><a href="#">About Us</a></li>
                                 <li><a href="#">Site Map </a></li>
                                <li><a href="https://localhost:44339/Pages/SignUp.aspx">Sign Up</a></li>
                                     <li><a href="https://localhost:44339/login-form-14/LoginFormFinal.aspx">Sign In</a></li>
                                <li><a href="#">Contact Us</a></li> <!--these elements are goiung under single class-->
                                <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                         <ul class="dropdown-menu">  <!--crearte drop down menu!!-->
                                        <li class="dropdown-header">Men</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Shirts</a></li>
                                        <li><a href="#">Pants</a></li>
                                         <li><a href="#">Denims</a></li>

                                             <li class="dropdown-header">Women</li>
                                              <li role="separator" class="divider"></li>
                                                <li><a href="#">Skirts</a></li>
                                                <li><a href="#">Scarfs</a></li>
                                                <li><a href="#">Hats</a></li>
                                        </ul>
                                                                                                                                 </li>
                            </ul>

                        </div>
                    </div>
                </div>
            <!--Carosol-->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="Images/066bcde0-21cf-4b66-8855-8f65960984f1.jpg" alt="Image1" />
      <div class="carousel-caption">
        <h3>DIY Embrodary arts</h3>
    <p>family decor</p>
          <p><a class="btn btn-lg btn-primary" href="defaultform.aspx">Join Us today</a></p>  <!--Add button to design -->
      </div>
    </div>

      <div class="item">
      <img src="Images/541fd7c7-45a1-4b9d-b73f-e5aaa28c9f8a.jpg" aria-autocomplete="both" alt="Image2"/>
      <div class="carousel-caption">
        <h3>DIY Embrodary arts</h3>
    <p>best gift</p>
      </div>
    </div>

      <div class="item">
      <img src="Images/e059cabc-1b4e-43f0-b5ec-29f3c338e507.jpg"  aria-autocomplete="both" alt="Image3"/>
      <div class="carousel-caption">
        <h3>DIY Embrodary arts</h3>
    <p>make you happy</p>
      </div>
    </div>

    <div class="item">
      <img src="Images/d71926ae-90ff-4de5-90ad-d072ada822de.jpg" aria-autocomplete="both" alt="image4"/>
      <div class="carousel-caption">
          <h3>DIY Embrodary arts</h3>
    <p>make you happy</p>
      </div>

    </div>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
            <!--Carosol-->
        </div>
        <!--Middle content-->
        <div class="container center "> <!-- here we need to add specific style we need; in here it was "Center"-->
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="Images/e2054975dc2bc196ba5ef001ed31b36f_download-hd-quality-assurancewe-being-a-client-centric-_1699-1674 (1).png" alt="Premium badge" width="100" height="100"/>
                <h3>Best Products</h3> 
                <p>Premium Assured Quality</p>
   <!--added button--> <p><a class=" btn btn-default" href="form2.aspx" role="button">Explore &raquo;</a></p>  <!-- &raquo; adds two >> symbolls -->
                </div>

            <div class="col-lg-4">
                 <img class="img-circle" src="Images/4.png" alt="Premium badge" width="100" height="100"/>
                 <h3>Newly Arrived</h3>
                 <p>100 of selections</p>
                   <!--added button--> <p><a class=" btn btn-default" href="form2.aspx" role="button">Explore more &raquo;</a></p>  <!-- &raquo; adds two >> symbolls -->
                </div>

                <div class="col-lg-4">
                 <img class="img-circle" src="Images/9.png" alt="Premium badge" width="100" height="100"/>
                 <h3>Great Impact</h3>
                 <p>Make your living place more happy</p>
                   <!--added button--> <p><a class=" btn btn-default" href="form2.aspx" role="button">Explore more &raquo;</a></p>  <!-- &raquo; adds two >> symbolls -->
            </div>

        </div>
            </div>
        <!--Middle content-->


        <!--footer-->
        <footer>
            <div class="container">
                <p>
                    <a href="#">Back to top</a>
                </p>
            <p> &copy; 2021 Ayu Productions &middot;<a href="#">The Footer</a>&middot;<a href="#">contact us</a>&middot;<a href="#">Help page </a></p>  <!--The footer is the link, which it redirect after we click--> <!--&Middot tag is used to place a dot between words-->
            </div>
        </footer>
        <!--footer-->

    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
