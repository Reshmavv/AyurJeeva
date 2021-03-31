<%@ Page Language="C#" AutoEventWireup="true" CodeFile="company_productdetails.aspx.cs" Inherits="Company_company_productdetails" %>

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
	</head>
    <body>	
        <form method="POST" class="search_form" runat="server" id="f1">	
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					
						
				
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li><a href="companyhome.aspx">Home</a></li>
							<li><a href="changepassword.aspx">Change Password</a></li>				
							
                             <li>   <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Logout</asp:LinkButton></li>	</li>		
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
									<li><a href="updatedeleteproduct.aspx">Update/Delete Product</a></li>
                                    
                            
                            <li></li>							
								</ul>
																						
					
					</nav>
				</div>
			</section>
            <br />
           		<center>
			<section class="header_text sub" style="height:100px;width:300px;flex-align:center">
		<img class="pageBanner" src="mastercss/themes/images/ajurjeeva.png" alt="" >
				
			</section>	</center>
         
             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="id">		
			<ItemTemplate>
                 <section class="main-content">				
				<div class="row">						
					<div class="span12">
						<div class="row">
							<div class="span5">
								<a href="#" class="thumbnail" data-fancybox-group="group1" title="Description 1"><asp:Image ID="img1" runat="server" ImageUrl='<%# Eval("image") %>' Height="260px" Width="180px"/></a>												
								
							</div>
							
								<div class="span7">
								<address>
									<h5><strong>Brand:</strong></h5> <span><%# Eval("brand") %></span><br>
									<h5><strong>Product Name:</strong></h5> <span><%# Eval("productname") %></span><br>
									<h5><strong>Ingredients:</strong></h5> <span><%# Eval("ingredients") %></span><br>								
								</address>									
								<h5><strong>Mrp:</strong></h5> <span><%# Eval("mrp") %></span><br />
                                <h5><strong>Distributor:</strong> </h5><span><%# Eval("distributors") %></span>
							</div>
										
													
						</div>
                        <br /><br />
						
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Description</a></li>
									
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home"><%# Eval("description") %></div>
									
														
							
						</div>
					</div>
					
				</div>
			</section>	
             
                </ItemTemplate>
                 </asp:DataList>
             
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [addproduct] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>	
           
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