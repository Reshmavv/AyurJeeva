<%@ Page Title="" Language="C#" MasterPageFile="~/Company/CompanyMaster.master" AutoEventWireup="true" CodeFile="viewmyproducts.aspx.cs" Inherits="Company_viewmyproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT [image] FROM [addproduct] WHERE ([cid] = @cid)">
        <SelectParameters>
            <asp:SessionParameter Name="cid" SessionField="companyid" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

