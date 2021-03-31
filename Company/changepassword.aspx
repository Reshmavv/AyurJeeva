<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="Company_changepassword" %>

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
<body style="background-image:url(login_css/images/360_F_245776292_KjTmy7E9bYhpZxfikW1YLbZrG2EPoRay.jpg)">

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    
                    <form method="POST" id="form1" runat="server" class="signup-form">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <h2 class="form-title">Change Password</h2>
                        <center>
                             
                      
                        <div class="form-group">
                            <asp:TextBox ID="newpass" runat="server" class="form-input"  placeholder="New Password" Width="450px" TextMode="Password"></asp:TextBox>
                            <br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="newpass" ErrorMessage="Enter New password" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="rnewpass" runat="server" class="form-input"  placeholder="Retype New Password" Width="450px" TextMode="Password"></asp:TextBox>
                            <br />
                            &nbsp;<br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="rnewpass" ErrorMessage="Enter repeat new password" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="newpass" ControlToValidate="rnewpass" ErrorMessage="Does't match " ForeColor="Red"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <asp:Button ID="submit" runat="server"  class="form-submit" Text="Change" Width="450px" OnClick="submit_Click"></asp:Button>
                       
                        </div>
                             Go to <a href="companyhome.aspx" class="loginhere-link"> <font color="red"></font> <font color="red">HOME</font> </a><br /><br />
                            </center>
                    </form>
                   
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="login_css/vendor/jquery/jquery.min.js"></script>
    <script src="login_css/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>