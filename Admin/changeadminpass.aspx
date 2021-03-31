<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="changeadminpass.aspx.cs" Inherits="Admin_changeadmispass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" ForeColor="#009933" Font-Bold="True" Font-Size="Medium"></asp:Label>
   
    <br />
    <br />
     <div class="col-lg-8 col-xlg-9 col-md-10">
                        <div class="card">
                            <div class="card-body">
                               
                                    <div class="form-group">
                                        <br />
                                        <asp:Label class="col-md-12 mb-0" ID="label1" runat="server">New Password</asp:Label>
                                        <br />
                                        <div class="col-md-12">
                                            <asp:TextBox ID="npass" runat="server" type="password" 
                                                 class="form-control pl-0 form-control-line"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="npass" ErrorMessage="Enter New password" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <asp:Label class="col-md-12 mb-0" ID="label2" runat="server">Re-type New Password</asp:Label>
                                        <br />
                                        <div class="col-md-12">
                                            <asp:TextBox ID="rpass" runat="server" type="password" 
                                                class="form-control pl-0 form-control-line" ></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="rpass" ErrorMessage="Enter Re-type new password" ForeColor="Red"></asp:RequiredFieldValidator>
                                             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="npass" ControlToValidate="rpass" ErrorMessage="Does't match " ForeColor="Red"></asp:CompareValidator>
                                        </div>
                                    </div>
                                 
                                    <div class="form-group" >
                                        <div class="col-sm-12 d-flex" >
                                            <asp:Button id="add" runat="server" class="btn btn-success mx-auto mx-md-0 text-white"  Text="CHANGE PASSWORD" Width="604px" onclick="add_Click" ></asp:Button>
                                             
                                        </div>
                                    </div>
                                     
                           
                                </div></div></div>
</asp:Content>

