  <%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
<body style="background-image:url(uploads/360_F_245776292_KjTmy7E9bYhpZxfikW1YLbZrG2EPoRay.jpg)" >
    <div class="main">

        <section class="signup">
            <!-- <img src="login_css/images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form id="f1" runat="server" class="signup-form">
                        <h2 class="form-title">Login</h2>
                        <div class="form-group">
                            <asp:TextBox ID="t1" runat="server"  class="form-input"   placeholder="username" Width="489px" ></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        
                        <div class="form-group">
                            <asp:TextBox ID="t2" runat="server" type="password" class="form-input"  placeholder="Password" Width="489px" ></asp:TextBox>
                            
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                        </div>
                        
            
                        <div class="form-group">
                            <asp:Button  ID="b1" runat="server" class="form-submit" OnClick="b1_Click" Text="Sign in" Width="489px" ></asp:Button>
                        
                             </div>

                       
                    </form>
                    <asp:Label ID="l1" runat="server"></asp:Label>
                    
                 
                </div>
            </div>
        </section>
        
    </div>

    <!-- JS -->
    <script src="login_css/vendor/jquery/jquery.min.js"></script>
    <script src="login_css/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>