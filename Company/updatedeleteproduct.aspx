<%@ Page Title="" Language="C#" MasterPageFile="~/Company/CompanyMaster.master" AutoEventWireup="true" CodeFile="updatedeleteproduct.aspx.cs" Inherits="Company_updatedeleteproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
         
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
  
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" DataKeyNames="id" Height="16px" DataSourceID="SqlDataSource1" Width="1900px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" runat="server" ReadOnly="True" SortExpression="id">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
          
          
            <asp:ImageField DataImageUrlField="image" HeaderText="Image" ReadOnly="True" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle BorderStyle="None" HorizontalAlign="Center" Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="brand" HeaderText="Brand" SortExpression="brand">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="mrp" HeaderText="Mrp" SortExpression="mrp" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ingredients" HeaderText="Ingredients" SortExpression="ingredients" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
             <asp:BoundField DataField="distributors" HeaderText="Distributors" SortExpression="distributors">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField SelectText="Edit" ShowSelectButton="True">
            <ItemStyle ForeColor="Red" />
            </asp:CommandField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red" CommandName="Delete" onlclick="delete">Delete</asp:LinkButton>
                    <br />
                    <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCCC" style="text-align: center;display:none" Width="261px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;<font size="2"color="red"  >Do you want to delete?</font><br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" BackColor="White" ForeColor="Black" Height="40px" width="80px" Text=" YES" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" BackColor="White" ForeColor="Black" Height="40px" width="80px" Text="  NO" />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="LinkButton2" DisplayModalPopupID="ModalPopupExtender2" />
                    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="LinkButton2" PopupControlID="Panel2" OkControlID="Button3" CancelControlID="Button4"></ajaxToolkit:ModalPopupExtender>
                
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>

        <EditRowStyle BackColor="#7C6F57" />

        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />

    </asp:GridView>


    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>


           <br />
           <asp:Panel ID="Panel1" runat="server" Height="760px" Width="466px" BackColor="#669999" style="background-color: #C0C0C0;display:none"  >
               
               <br />
               
               <table  style="border-style: none; border-color: inherit; border-width: medium; width: 100%; height: 448px;" >
                   <tr>
                       <td style="width: 505px" class="input-medium">
                           <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="Id" Visible="false"></asp:Label>
                       </td>
                       <td style="width: 505px" class="input-medium">
                           <asp:TextBox ID="TextBox1" runat="server"  ReadOnly="True" visible="false" BackColor="Transparent" BorderStyle="None" ForeColor="Black" ></asp:TextBox>
                           <br />
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 505px" class="input-medium">
                           <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="Brand"></asp:Label>
                       </td>
                       <td style="width: 505px" class="input-medium">
                           <asp:TextBox ID="TextBox2" runat="server" BackColor="White" ForeColor="Black" Height="40px" Width="285px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 505px" class="input-medium">
                           <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="Product Name"></asp:Label>
                       </td>
                       <td style="width: 505px" class="input-medium">
                           <asp:TextBox ID="TextBox3" runat="server" BackColor="White" ForeColor="Black" Height="40px" Width="285px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 505px" class="input-medium">
                           <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Mrp"></asp:Label>
                       </td>
                       <td style="width: 505px" class="input-medium">
                           <asp:TextBox ID="TextBox4" runat="server" BackColor="White" ForeColor="Black" TextMode="Number" Height="40px" Width="285px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid data" ForeColor="Red" MaximumValue="100000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 505px" class="input-medium">
                           <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Text="Ingredients"></asp:Label>
                       </td>
                       <td style="width: 505px" class="input-medium">
                           <asp:TextBox ID="TextBox5" runat="server" BackColor="White" ForeColor="Black" TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                    <tr>
                       <td style="width: 505px" class="input-medium">
                           <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Text="Distributors"></asp:Label>
                       </td>
                       <td style="width: 505px" class="input-medium">
                           <asp:TextBox ID="TextBox7" runat="server" BorderColor="White" ForeColor="Black" TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>


                   <tr>
                       <td style="width: 296px; height: 64px;">
                           <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="Description"></asp:Label>
                       </td>
                       <td style="width: 694px; height: 64px;">
                           <asp:TextBox ID="TextBox6" runat="server" BorderColor="White" ForeColor="Black" TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2" style="width: 694px; height: 60px; text-align: justify;" class="text-center" >
                          
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="Black" Height="40px" Text="  UPDATE" Width="90px" OnClick="Save" BorderStyle="Solid" />
                           &nbsp;&nbsp;&nbsp;&nbsp
                           <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="Solid" ForeColor="Black" Height="40px" OnClick="Save" Text="   CANCEL" Width="90px" />
                       </td>
                   </tr>
               </table>
           </asp:Panel>
           <br />


           <br />
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="Button2" ></ajaxToolkit:ModalPopupExtender>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [addproduct] WHERE ([cid] = @cid)" DeleteCommand="DELETE FROM [addproduct] WHERE [id] = @id" InsertCommand="INSERT INTO [addproduct] ([cid], [brand], [productname], [image], [mrp], [ingredients],[distributors], [description]) VALUES (@cid, @brand, @productname, @image, @mrp, @ingredients, @distributors, @description)" UpdateCommand="UPDATE [addproduct] SET [cid] = @cid, [brand] = @brand, [productname] = @productname, [image] = @image, [mrp] = @mrp, [ingredients] = @ingredients,[distributors] = @distributors,[description] = @description WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cid" Type="Int32" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="productname" Type="String" />
                
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="mrp" Type="String" />
                <asp:Parameter Name="ingredients" Type="String" />
                 <asp:Parameter Name="distributors" Type="String" />
                <asp:Parameter Name="description" Type="String" />
               
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="cid" SessionField="companyid" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="cid" Type="Int32" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="productname" Type="String" />
            
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="mrp" Type="String" />
                <asp:Parameter Name="ingredients" Type="String" />
                <asp:Parameter Name="distributors" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
</asp:Content>

