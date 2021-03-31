<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="Admin_adminhome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <!--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cid" DataSourceID="SqlDataSource1" Width="900px" AllowSorting="True" Height="275px">
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="Cid" ReadOnly="True" SortExpression="cid">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="companyname" HeaderText="Companyname" SortExpression="companyname">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="district" HeaderText="District" SortExpression="district">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="regdate" HeaderText="Reg-date" SortExpression="regdate">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           
            <asp:ImageField HeaderText="Photo" DataImageUrlField="photo" >
                <ControlStyle Height="100px" Width="100px" />
                <ItemStyle Height="80px" Width="80px" />
            </asp:ImageField>
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Approve</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Reject</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
      
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
           
    </asp:GridView>
    

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" DeleteCommand="DELETE FROM [companyregistration_table] WHERE [cid] = @cid" InsertCommand="INSERT INTO [companyregistration_table] ([cid], [companyname], [address], [district], [regdate], [description], [password], [status], [photo]) VALUES (@cid, @companyname, @address, @district, @regdate, @description, @password, @status, @photo)" SelectCommand="SELECT * FROM [companyregistration_table]" UpdateCommand="UPDATE [companyregistration_table] SET [companyname] = @companyname, [address] = @address, [district] = @district, [regdate] = @regdate, [description] = @description, [password] = @password, [status] = @status, [photo] = @photo WHERE [cid] = @cid">
            <DeleteParameters>
                <asp:Parameter Name="cid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cid" Type="Int32" />
                <asp:Parameter Name="companyname" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter DbType="Date" Name="regdate" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="companyname" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter DbType="Date" Name="regdate" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="cid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>-->

</asp:Content>

