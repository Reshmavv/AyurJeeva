<%@ Page Language="C#" AutoEventWireup="true" CodeFile="companylogin.aspx.cs" Inherits="companylogin" %>

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
            <!-- <img src="login_css/images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form id="userlog" runat="server" class="signup-form">
                        <h2 class="form-title">Login</h2>
                        <div class="form-group">
                            <asp:TextBox ID="cid" runat="server"  class="form-input"   placeholder="Enter Company ID" Width="489px" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cid" ErrorMessage="Please enter Company ID" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        
                        <div class="form-group">
                            <asp:TextBox ID="pass" runat="server" class="form-input"  placeholder="Enter password" TextMode="Password" Width="489px" ></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        
         
                    <asp:Button  ID="submit" runat="server" class="form-submit"  Text="Sign in"  Width="489px" OnClick="submit_Click" ></asp:Button>
                        
                        
                    </form>
                    <br />
                      Go to <a href="MainMasterAspx.aspx" class="loginhere-link"> <font color="red"></font> <font color="red">HOME</font> </a><br /><br />
                     Login as User <a href="userlogin.aspx" class="loginhere-link">Click here</a>
                    
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