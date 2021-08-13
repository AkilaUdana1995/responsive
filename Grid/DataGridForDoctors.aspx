<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataGridForDoctors.aspx.cs" Inherits="responsive.Grid.DataGridForDoctors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Your Nearby Doctors</title>
	<meta charset="UTF-8"/>
        <link rel="stylesheet" href="SearchDoc.css"/>

    <%--<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/bootstrap.cosmo.min.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
       --%><%--	<meta name="viewport" content="width=device-width, initial-scale=1"/>
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
	<link rel="stylesheet" type="text/css" href="css/main.css"/>--%>
<!--===============================================================================================-->
    
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
			<div class="limiter">
                <%--<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
                        <br />
        <div id="mainContainer" class="container">
            <div class="shadowBox">
                <div class="page-container">
                    <div class="container">
                       
                        <div class="row">
                            <div class="col-lg-12 ">
                                <div class="table-responsive">--%>
				
					<br />
                <br />

					<asp:GridView ID="gvGrade" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" Height="180px" Width="1403px" OnRowCommand="gvGrade_RowCommand" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" HorizontalAlign="Center" >
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>

                    <asp:TemplateField HeaderText="ID" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="ID" runat="server" Text='<%# Eval("ID") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>


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

                   


                    <asp:TemplateField HeaderText="City" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="LocatedMainCity" runat="server" Text='<%# Eval("LocatedMainCity") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Adress" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="ClinicFullAddress" runat="server" Text='<%# Eval("ClinicFullAddress") %>' />
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


                    <asp:TemplateField HeaderText="Email" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="EmailAddress" runat="server" Text='<%# Eval("EmailAddress") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Avilable At" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="AvailableTime" runat="server" Text='<%# Eval("AvailableTime") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Special Appoinments" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="ReadyToHaveSpecialAppoint" runat="server" Text='<%# Eval("ReadyToHaveSpecialAppoint") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Clinic owner" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:Label ID="ClinicOwnerEmail" runat="server" Text='<%# Eval("ClinicOwnerEmail") %>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="10px" Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Center" Font-Bold="true" />
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Check Availability" HeaderStyle-BackColor="#ffcc66" HeaderStyle-Font-Bold="true"  >
                        <ItemTemplate >
                            <asp:Button ID="btnSelectedRow" runat="server" CommandName="SelectRecord" CommandArgument="<%# Container.DisplayIndex %>" CssClass="labelNavigation " Text="Check Now" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="100px" Font-Bold="true" />
                    </asp:TemplateField>

                </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <RowStyle BorderStyle="Solid" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
           </asp:GridView>
		
				</div>
            </div>
        <%--	</div>
		</div>
	</div>

        </div>
        </div>
            </div>
                    </div>
                </div>
            </div>
                </div>
            </div>--%>
	<%--<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
        --%>
        
        
    </form>
	</body>
</html>
