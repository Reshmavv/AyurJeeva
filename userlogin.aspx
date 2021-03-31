<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AyurJeeva</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login_css/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="login_css/css/style.css">
</head>
<body style="background-image:url(uploads/360_F_245776292_KjTmy7E9bYhpZxfikW1YLbZrG2EPoRay.jpg)">
    <center>
    <div class="main">

        <section class="signup">
           <!--<img src="uploads/wp6845566.jpg" alt="">-->
            <div class="container">
                <div class="signup-content">
                    <form id="userlog" runat="server" class="signup-form">
                       
                        <h2 class="form-title">Login</h2>
                        <div class="form-group">
                            <asp:TextBox ID="t1" runat="server"  class="form-input"   placeholder="Enter email" Width="480px" TextMode="Email" ></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                       
                        <div class="form-group">
                            <asp:TextBox ID="t2" runat="server" class="form-input"  placeholder="Enter password" TextMode="Password" Width="478px" ></asp:TextBox>
                           
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        
          <br />
                       
                    
                            <asp:Button  ID="submit" runat="server" class="form-submit"  Text="Sign in" OnClick="submit_Click" Width="478px" ></asp:Button>
                        
                       
                    </form><br /><br />
                      Go to <a href="MainMasterAspx.aspx" class="loginhere-link"> <font color="red"></font> <font color="red">HOME</font> </a><br /><br />
                     Login as Company <a href="companylogin.aspx" class="loginhere-link">Click here</a>
                
                </div>
            </div>
        </section>
        
    </div>
        </center>

    <!-- JS -->
    <script src="login_css/vendor/jquery/jquery.min.js"></script>
    <script src="login_css/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>