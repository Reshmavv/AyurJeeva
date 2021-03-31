<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="viewdisease.aspx.cs" Inherits="User_viewdisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
        <br /><br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Search here" BackColor="White" ForeColor="Black" Height="25px" Width="161px"></asp:TextBox>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Search" ForeColor="Black" Font-Bold="True"  BackColor="Orange" OnClick="Button2_Click" Font-Size="Small" Height="27px" Width="91px"/>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [diseasedetails] WHERE ([diseasename] LIKE '%' + @diseasename + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="diseasename" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DataList ID="d1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="2" OnItemCommand="d1_ItemCommand">
    
       
    <ItemTemplate>
       <div id="myCarousel" class="myCarousel carousel slide" style="display:inline;">

  
									<div class="carousel-inner" >
										<div class="active item" >
											<ul class="thumbnails" >												
												<li class="span5" > 
													<div class="product-box" >
														<center>
														<p><h2><font size="25"><i><a href="#" class="title"><%# Eval("diseasename") %></a></i></font></h2></p></center>
                                                          <asp:Button ID="Button1" runat="server" Text="View more" CommandName="viewmore" CommandArgument='<%# Eval("id") %>' ForeColor="Black" BackColor="white"/>
														
														
													</div>
												</li>
												
												
												
											</ul>
										</div>
										
									</div>							
							</div>
      
        	
           
        </ItemTemplate>
        </asp:DataList>
        </center>
    <!-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT [image] FROM [addproduct]"></asp:SqlDataSource>-->
</asp:Content>

