<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewdiseasedetails.aspx.cs" Inherits="User_viewdiseasedetails" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>AyurJeeva</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="user_css/bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="user_css/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="user_css/themes/css/bootstrappage.css" rel="stylesheet"/>
		            
		<!-- global styles -->
		<link href="user_css/themes/css/flexslider.css" rel="stylesheet"/>
		<link href="user_css/themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="user_css/themes/js/jquery-1.7.2.min.js"></script>
		<script src="user_css/bootstrap/js/bootstrap.min.js"></script>				
		<script src="user_css/themes/js/superfish.js"></script>	

		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="user_css/js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>	
        <form method="POST" class="search_form" id="f1" runat="server">	
		<div id="top-bar" class="container">
			<div class="row">
				
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							
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
							<li><a href="userhome.aspx">Home</a></li>
									<li><a href="viewdisease.aspx">View Disease</a></li>
                       		
                                     <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Logout</asp:LinkButton></li>
                            <li></li>
                            
                            <li></li>							
								</ul>
																						
					
					</nav>
				</div>
			</section>
           		
			<center>     		
<section class="header_text sub" style="height:100px;width:300px;flex-align:center">
			<img class="pageBanner" src="user_css/themes/images/ajurjeeva.png" alt="" >
              
				
			</section>
          </center>
         
             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="id">		
			<ItemTemplate>
                 <section class="main-content">				
				<div class="row">						
					<div class="span12">
						<div class="row">
							<div class="span2">
							
								
							</div>
							<div class="span5">
								<address>
									<h5><strong>Disease Name:</strong></h5> <span><%# Eval("diseasename") %></span><br/><br />
									<h5><strong>Symptoms:</strong></h5> <span><%# Eval("symptoms") %></span><br/>
																
								</address>									
								
							</div>
													
						</div>
                     
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Remedies</a></li>
									
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home"><%# Eval("remedies") %></div>
									
								</div>							
							</div>						
							
						</div>
					</div>
					
				</div>
			</section>	
                
                </ItemTemplate>
                 </asp:DataList>
             
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [diseasedetails] WHERE ([id] = @id)">
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
        
		
		<script src="user_css/themes/js/common.js"></script>
		<script src="user_css/themes/js/jquery.flexslider-min.js"></script>
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
