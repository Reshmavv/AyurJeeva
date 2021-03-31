<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="Company_addproduct" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>AyurJeeva</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="mastercss/bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="mastercss/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="mastercss/themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="mastercss/themes/css/flexslider.css" rel="stylesheet"/>
		<link href="mastercss/themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="mastercss/themes/js/jquery-1.7.2.min.js"></script>
		<script src="mastercss/bootstrap/js/bootstrap.min.js"></script>				
		<script src="mastercss/themes/js/superfish.js"></script>	

		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="mastercss/js/respond.min.js"></script>
		<![endif]-->
	    <style type="text/css">
            .auto-style1 {
                width: 368px;
            }
            .auto-style2 {
                height: 64px;
                width: 113px;
            }
            .auto-style3 {
                width: 368px;
                height: 64px;
            }
            .auto-style4 {
                width: 113px;
            }
        </style>
	</head>
    <body>	
        <form id="f1" runat="server">	
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li><a href="companyhome.aspx">Home</a></li>
							<li><a href="changepassword.aspx">Change Password</a></li>				
							<li><a href="#">Logout</a></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="addproduct.aspx">Add Product</a></li>
									<li><a href="viewmyproducts.aspx">View My Products</a></li>									
									<li><a href="updatedeleteproduct.aspx">Update/Delete Product Details</a></li>
																		
								</ul>
																						
					
					</nav>
				</div>
			</section>	
             			
            	
		<section class="header_text sub">
			<!--<img class="pageBanner" src="mastercss/themes/images/ajurjeeva.png" alt="" >-->
				<br />
			</section>				
			<section class="main-content">				
				<div class="row">
					<div class="span5">					
						
						<h4 class="title"></h4>	
					</div>
					<div class="span6">				
					<h4 class="title"><span class="text"><strong ><font style="color:green">ADD</font></strong>
                      PRODUCT</span></h4></div><br />
                    <center>
                        <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label9" runat="server" BackColor="White" Font-Bold="True" ForeColor="Black" Font-Size="Medium" ></asp:Label>
                      <div>
						  
							<br />
							<br />
                        
                            <table>

								<tr>
								<td class="auto-style4"><asp:Label ID="Label1" runat="server" Text="Brand" ></asp:Label>
										</td>
									<td class="auto-style1">	
                                        <br />
                                        <asp:TextBox ID="brand" runat="server" type="text"  class="input-xlarge" Height="22px" Width="244px"></asp:TextBox>
									
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="brand" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
									</td></tr>
								<tr>
								<td class="auto-style4">	<asp:Label ID="Label2" runat="server" Text="Product name" ></asp:Label>
									</td>
									<td class="auto-style1">	
                                        <br />
                                        <asp:TextBox ID="pname" runat="server" type="text"  class="input-xlarge" Height="22px" Width="244px"></asp:TextBox>
								      
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="pname" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
								</td>	
                                </tr>
								<tr>
								<td class="auto-style4">	<asp:Label ID="Label3" runat="server" Text="Image" ></asp:Label>
									</td>
								<td class="auto-style1">	
                                    <br />
                                    <asp:FileUpload ID="pimage" runat="server" class="input-xlarge" Font-Bold="True" Font-Size="Small" Height="30px" Width="253px" ></asp:FileUpload>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="pimage" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />
									<br />
                                    <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
									</td>
								</tr>
                            <tr>
							<td class="auto-style4">		<asp:Label ID="Label6" runat="server" Text="MRP" ></asp:Label>
								</td>
                                <td class="auto-style1">		
                                    <br />
                                    <asp:TextBox ID="mrp" runat="server" type="text"  class="input-xlarge" TextMode="Number" Height="22px" Width="244px"></asp:TextBox>
								   
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="mrp" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
								    <br />
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="mrp" ErrorMessage="Enter valid data" ForeColor="Red" MaximumValue="100000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
								</td>	
								</tr>
                                <tr>
								<td class="auto-style4">	<asp:Label ID="Label4" runat="server" Text="Ingredients" ></asp:Label>
									</td>
                                    <td class="auto-style1">	
                                        <br />
                                        <asp:TextBox ID="ingredients" runat="server" type="text"  class="input-xlarge" TextMode="MultiLine" Height="22px" Width="244px"></asp:TextBox>
									    
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ingredients" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
									</td>
								</tr>


                                 <tr>
								<td class="auto-style4">	<asp:Label ID="Label8" runat="server" Text="Distributor" ></asp:Label>
									</td>
                                    <td class="auto-style1">	
                                        <br />
                                        <asp:TextBox ID="distributor" runat="server" type="text"  class="input-xlarge" TextMode="MultiLine" Width="244px"></asp:TextBox>
									    
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="distributor" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
									</td>
								</tr>





                            <tr>
								<td class="auto-style2">	<asp:Label ID="Label5" runat="server" Text="Description" ></asp:Label>
								</td>
                                    <td class="auto-style3">		
                                        <br />
                                        <asp:TextBox ID="description" runat="server" class="input-xlarge" TextMode="MultiLine" Width="244px"></asp:TextBox>
									  
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="description" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
									</td>
								</tr>
								
								<tr>
                              <td colspan="2">    
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                  <asp:Button ID="add" runat="server" tabindex="9" class="btn btn-inverse large"  value="ADD" ForeColor="#99CC00" Text="ADD" Width="151px" OnClick="add_Click" Height="41px"></asp:Button>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    

						</td>  
                        </tr>
                        </table>
						
                        </div>	</center>
                       			
					</div>				
			
			</section>
           
					
				<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>About Us</h4>
						<ul class="nav">
							<li>AyurJeeva is one of the top website for product avertisement</li>  
							<li>Our major services include advertisement of Ayurvedic products,</li>
							<li>provide home remedies for various kind of diseases. </li>
							<li>We offer free service to users</li>
							<li></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>Contact Us</h4>
						<ul class="nav">
							<li>AyurJeeva</li>
							<li>email-ayurjeeva@gmail.</li>
							<li>phone-+923713747</li>
							<li>website-www.ayurjeeva.com</li>
						</ul>
					</div>
					<div class="span4">
						
						"Life (ayu) is the combination (samyoga) of body, senses, mind and reincarnating soul.  
				<br/>Ayurveda is the most sacred science of life, beneficial to humans both in this world and the world beyond.”
						<span class="social_icons">
							
						</span>
					</div>					
				</div>	
			</section>
            <center>
			<section id="copyright">
				<span>Copyright 2013 AyurJeeva  All right reserved.</span>
			</section>
                </center></div>
        
		
		<script src="mastercss/themes/js/common.js"></script>
		<script src="mastercss/themes/js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
		    $(function () {
		        $(document).ready(function () {
		            $('.flexslider').flexslider({
		                animation: "fade",
		                slideshowSpeed: 4000,
		                animationSpeed: 600,
		                controlNav: false,
		                directionNav: true,
		                controlsContainer: ".flex-container" // the container that holds the flexslider
		            });
		        });
		    });
		</script>
            </form>
    </body>
</html>