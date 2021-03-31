<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="adddisease.aspx.cs" Inherits="Admin_adddisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
   
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" ForeColor="#009933" Font-Bold="True" Font-Size="Medium"></asp:Label>
   
    <br />
     <div class="col-lg-8 col-xlg-9 col-md-10">
                        <div class="card">
                            <div class="card-body">
                            
                                    <div class="form-group">
                                        <br />
                                        <asp:Label class="col-md-12 mb-0" ID="label1" runat="server">Disease Name</asp:Label>
                                        <br />
                                        <div class="col-md-12">
                                            <asp:TextBox ID="dname" runat="server" type="text" 
                                                class="form-control pl-0 form-control-line"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dname" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <asp:Label class="col-md-12 mb-0" ID="label2" runat="server">Symptoms</asp:Label>
                                        <br />
                                        <div class="col-md-12">
                                            <asp:TextBox ID="symptoms" runat="server" type="text" 
                                                class="form-control pl-0 form-control-line" TextMode="MultiLine"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="symptoms" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                   <div class="form-group">
                                        <br />
                                        <asp:Label class="col-md-12 mb-0" ID="label3" runat="server">Remedies</asp:Label>
                                        <br />
                                        <div class="col-md-12">
                                            <asp:TextBox ID="remedy" runat="server" type="text" 
                                                class="form-control pl-0 form-control-line" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="remedy" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    
                                    
                                 
                                    <div class="form-group" >
                                        <div class="col-sm-12 d-flex" >
                                            <asp:Button id="add" runat="server" class="btn btn-success mx-auto mx-md-0 text-white" value="ADD" Text="ADD" Width="604px"  onclick="add_Click1"></asp:Button>
                                             
                                        </div>
                                    </div>
                                     
                               
                                </div></div></div>
</asp:Content>

