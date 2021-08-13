<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSelectedDoc.aspx.cs" Inherits="responsive.Grid.ViewSelectedDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Your Selected Doc inquary</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href=" SearchDoc.css"/>
   
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
    <style type="text/css">
        .auto-style1 {
            left: 5px;
            top: 2px;
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
			<div class="limiter">
		<div class="container-table100">

			<div class="wrap-table100">
				<div class="table100">
                    <asp:GridView ID="GVSelectedDoc" runat="server" CssClass="auto-style1" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <Columns>

							<asp:TemplateField HeaderText="Doctor's Name" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="NameOfDoc" runat="server" Text='<%# Eval("NameOfDoc") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>

							<asp:TemplateField HeaderText="Clinic Name" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="NameOfClinic" runat="server" Text='<%# Eval("NameOfClinic") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Telephone" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="TpNumber" runat="server" Text='<%# Eval("TpNumber") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>

                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
					
					 <%--<Columns>
                    <asp:TemplateField HeaderText="ID" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="ID" runat="server" Text='<%# Eval("ID") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>
						 </Columns>--%>

				</div>
			</div>

			<div class="relative">
			 <div class="form-group">
		            <asp:Button ID="btnAppoint" runat="server" Text="Check Availability" class="form-control btn btn-primary rounded submit px-3 " OnClick="btnAppoint_Click"/>
				   <asp:Button ID="BtnGoBack" runat="server" Text="Back" class="form-control btn btn-primary rounded submit px-3  "/>
				 </div>
				</div>

			

		</div>
	</div>

        </div>
        </div>
		<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
    </form>

 
</body>
</html>
