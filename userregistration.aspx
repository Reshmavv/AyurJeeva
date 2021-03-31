<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userregistration.aspx.cs" Inherits="userregistration" %>

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
<body style="background-image:url(uploads/360_F_245776292_KjTmy7E9bYhpZxfikW1YLbZrG2EPoRay.jpg); background-position:center">

    <div class="main">

        <section class="signup">
            <!-- <img src="login_css/images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <center>
                    <form ID="userregform" runat="server" class="signup-form">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" ></asp:Label>
                        <h2 class="form-title">Create account</h2>
                        <div class="form-group">
                            <asp:TextBox ID="name"  runat="server" type="text" class="form-input"   placeholder="Your Name"  Width="480px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="name" ErrorMessage="Enter valid name" ForeColor="Red" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="email" runat="server" type="email" class="form-input" name="email"  placeholder="Your Email"  Width="480px" TextMode="Email"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" ></asp:Label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="password" runat="server" type="password" class="form-input"  placeholder="Password"  Width="480px" TextMode="Password"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                         <div class="form-group">
                            <asp:TextBox ID="repassword" runat="server" type="password" class="form-input" placeholder="Repeat your password" Width="480px" TextMode="Password"></asp:TextBox>
                             <br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="repassword" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="repassword" ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                        </div>
                       
                        <div class="form-group">
                            <asp:Button ID="submit" runat="server" class="form-submit" Text="Sign up" OnClick="submit_Click" Width="480px"></asp:Button>
                        </div>
                      
                    </form>
               
                       Go to <a href="MainMasterAspx.aspx" class="loginhere-link"> <font color="red"></font> <font color="red">HOME</font> </a><br /><br />
                        Register As Company<a href="companyregistration.aspx" class="loginhere-link">Click here</a>
                    <br />
                             
              </center>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="login_css/vendor/jquery/jquery.min.js"></script>
    <script src="login_css/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>