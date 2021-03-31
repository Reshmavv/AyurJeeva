<%@ Page Language="C#" AutoEventWireup="true" CodeFile="companyregistration.aspx.cs" Inherits="companyregistration" %>
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
<body style="background-image:url(uploads/360_F_245776292_KjTmy7E9bYhpZxfikW1YLbZrG2EPoRay.jpg); background-position:center" >

    <div class="main">

        <section class="signup">
            <!-- <img src="login_css/images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" id="regform" class="signup-form" runat="server" ><center>
                        <asp:Label ID="Label3" runat="server" BackColor="White" Font-Bold="True" ForeColor="Black" ></asp:Label></center>
                        <h2 class="form-title">Create account</h2>
                     <div class="form-group">
                            
                            <asp:Label ID="cid" runat="server" Text="Company ID" Height="28px" Width="120px"></asp:Label>
                            <asp:TextBox ID="companyid" runat="server" class="form-input" Width="310px" ></asp:TextBox>
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="companyid" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;
                         <asp:Label ID="Label1" runat="server"  ForeColor="Red"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        
                        <div class="form-group">
                             <asp:Label ID="cname" runat="server" Text="Company Name" Height="28px" Width="120px"></asp:Label>
                            <asp:TextBox ID="companyname" runat="server" class="form-input"  Width="310px" ></asp:TextBox>
                             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="companyname" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="companyname" ErrorMessage="Enter valid name" ForeColor="Red" ValidationExpression="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                              <asp:Label ID="photo" runat="server" Text="Photo" Height="28px" Width="120px"></asp:Label>
                            <asp:FileUpload ID="pic" runat="server" class="form-input"  Width="310px" />
                            
                              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="pic" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;
                              <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                            
                              
                            
                        </div>
                        <div class="form-group">
                             <asp:Label ID="addr" runat="server" Text="Address" Height="28px" Width="120px"></asp:Label>
                            <asp:TextBox ID="address" runat="server" class="form-input" TextMode="MultiLine" Width="310px" ></asp:TextBox>
                             <br />
                            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="address" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <br />
                           <div class="form-group">
                             <asp:Label ID="dis" runat="server" Text="District" Height="28px" Width="120px"></asp:Label>
                             <asp:DropDownList ID="district" runat="server" class="form-input" Width="310px" >
                                 <asp:ListItem Value="-1">Select District</asp:ListItem>
                                 <asp:ListItem>Kasaragod</asp:ListItem>
                                 <asp:ListItem>Kannur</asp:ListItem>
                                 <asp:ListItem>Kozhikod</asp:ListItem>
                                 <asp:ListItem>Wayanad</asp:ListItem>
                                 <asp:ListItem>Malappuram</asp:ListItem>
                                 <asp:ListItem>Palakkad</asp:ListItem>
                                 <asp:ListItem>Thrissur</asp:ListItem>
                                 <asp:ListItem>Ernakulam</asp:ListItem>
                                 <asp:ListItem>Idukki</asp:ListItem>
                                 <asp:ListItem>Kottayam</asp:ListItem>
                                 <asp:ListItem>Pathanamthitta</asp:ListItem>
                                 <asp:ListItem>Alappuzha</asp:ListItem>
                                 <asp:ListItem>Kollam</asp:ListItem>
                                 <asp:ListItem>Thiruvananthapuram</asp:ListItem>
                             </asp:DropDownList>
                             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="district" ErrorMessage="Required field" ForeColor="Red" Display="Dynamic" InitialValue="-1"></asp:RequiredFieldValidator>
                        </div>

                          <div class="form-group">
                             <asp:Label ID="regd" runat="server" Text="Reg.date" Height="28px" Width="120px"></asp:Label>
                             <asp:TextBox ID="rdate" runat="server" class="form-input" AutoPostBack="True" TextMode="Date" Width="310px" ></asp:TextBox>
                            
                              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="rdate" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                              <br />
                            
                            </div>
                         <div class="form-group">
                              <asp:Label ID="desc" runat="server" Text="Description" Height="28px" Width="120px"></asp:Label>
                             <asp:TextBox ID="description" runat="server" class="form-input" TextMode="MultiLine" Width="310px"></asp:TextBox>

                              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="description" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>

                             </div>
                         <div class="form-group">
                             <asp:Label ID="pass" runat="server" Text="Password" Height="28px" Width="120px"></asp:Label>
                             <asp:TextBox ID="passsword" runat="server" class="form-input" TextMode="Password" Width="310px"></asp:TextBox>
                             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="passsword" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                         </div>

                         <div class="form-group">
                              <asp:Label ID="rpass" runat="server" Text="Repeat Password" Height="28px" Width="120px"></asp:Label>
                             &nbsp;<asp:TextBox ID="repass" runat="server" class="form-input" TextMode="Password" Width="310px"></asp:TextBox>
                              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="repass" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passsword" ControlToValidate="repass" ErrorMessage=" Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                         </div>

                        <div class="form-group">
                            <asp:Button ID="submit" runat="server" Text="SIGN UP" class="form-submit" OnClick="submit_Click" Width="474px"/>
                        </div>
                          
                    </form>
                <center>   Go to <a href="MainMasterAspx.aspx" class="loginhere-link"> <font color="red"></font> <font color="red">HOME</font> </a><br /><br />
                        Register As User<a href="userregistration.aspx" class="loginhere-link">Click here</a>
                    <br /><br />
                    
                       
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