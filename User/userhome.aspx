<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="User_userhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Search by brand(eg:Hamam)" BackColor="White" ForeColor="Black" Height="28px" Width="201px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Search" ForeColor="Black" Font-Bold="true"  BackColor="Orange" OnClick="Button2_Click" Height="28px" Width="89px"/>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [addproduct] WHERE ([brand] LIKE '%' + @brand + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="brand" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="d1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="3" DataSourceID="SqlDataSource1" OnItemCommand="d1_ItemCommand">
    
         
    <ItemTemplate>
      
       <div id="myCarousel" class="myCarousel carousel slide" style="display:inline;">

  
									<div class="carousel-inner" >
										<div class="active item" >
											<ul class="thumbnails" >												
												<li class="span4" > 
													<div class="product-box" >
														<span class="sale_tag"></span>
														<p><a href="product_detail.html" class="title"><asp:Image ID="img1" runat="server" ImageUrl='<%# Eval("image") %>' Height="180px" Width="180px"/></a></p>
														<a href="product_detail.html" class="title"><%# Eval("productname") %></a><br/>
														<a href="products.html" class="category"><%# Eval("brand") %></a>
														<p class="price"><%# Eval("mrp") %>/-</p>
                                                        <asp:Button ID="Button1" runat="server" Text="View more" CommandName="viewmore" CommandArgument='<%# Eval("id") %>' ForeColor="Black" BackColor="white"/>
													</div>
												</li>
												
												
												
											</ul>
                                             
										</div>
										
									</div>							
							</div>
      

             
        </ItemTemplate>
   
    </asp:DataList>
    <br />


 




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [addproduct]"></asp:SqlDataSource>
</asp:Content>

