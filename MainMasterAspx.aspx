<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="MainMasterAspx.aspx.cs" Inherits="MainMasterAspx" %>

<asp:Content ID="mastercontent1" ContentPlaceHolderID="mastercontent" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="search by brand(eg:Hamam)" BackColor="White" ForeColor="Black"></asp:TextBox>&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Search" ForeColor="Black" Font-Bold="true"  BackColor="Orange" OnClick="Button2_Click"/>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [addproduct] WHERE ([brand] LIKE '%' + @brand + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="brand" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   <asp:DataList ID="d1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="d1_ItemCommand">
    
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



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT [image] FROM [addproduct]"></asp:SqlDataSource>
   
</asp:Content>

