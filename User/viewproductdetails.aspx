<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="viewproductdetails.aspx.cs" Inherits="User_viewproductdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:DropDownList ID="DropDownList1" runat="server" class="input-block-level search-query" AutoPostBack="true" AppendDataBoundItems="true">
                        <asp:ListItem Text="search by brand" Value="0"></asp:ListItem>

                    </asp:DropDownList>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="id">
        

 
       
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
                                                        <p class="price"><%# Eval("ingredients") %>/-</p>
                                                        <p class="price"><%# Eval("description") %>/-</p>
                                                        
													</div>
												</li>
												
												
												
											</ul>
                                             
										</div>
										
									</div>							
							</div>
      

             
        </ItemTemplate>
   
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [addproduct] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

