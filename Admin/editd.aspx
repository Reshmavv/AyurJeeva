<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="editd.aspx.cs" Inherits="Admin_editd" %>


    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="Medium" Font-Bold="True"></asp:Label>


    <br />
    <br />

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="1000px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" OnRowDeleting="GridView1_RowDeleting" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id">
            <HeaderStyle HorizontalAlign="Center"  />
            <ItemStyle HorizontalAlign="Center"  />
            </asp:BoundField>
            <asp:BoundField DataField="diseasename" HeaderText="Disease Name" SortExpression="diseasename">
            <HeaderStyle HorizontalAlign="Center"  />
            <ItemStyle HorizontalAlign="Center"  />
            </asp:BoundField>
            <asp:BoundField DataField="symptoms" HeaderText="Symptoms" SortExpression="symptoms">
            <HeaderStyle HorizontalAlign="Center"  />
            <ItemStyle HorizontalAlign="Center"  />
            </asp:BoundField>
            <asp:BoundField DataField="remedies" HeaderText="Remedies" SortExpression="remedies">
            <HeaderStyle HorizontalAlign="Center"  />
            <ItemStyle HorizontalAlign="Center"  />
            </asp:BoundField>
            <asp:CommandField SelectText="Edit" ShowSelectButton="True" HeaderText="Action" >
            <HeaderStyle HorizontalAlign="Center"  />
            <ItemStyle  HorizontalAlign="Center"  />
            </asp:CommandField>
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate >
                    <br />
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete" >Delete</asp:LinkButton>
                    <br />
                    <asp:Panel ID="Panel2" runat="server" BackColor="#cccccc" ForeColor="Black" style="text-align: center;display:none" Width="294px" Height="123px">
                        <br />
                        Do you want to delete record?<br style="font-family: 'Times New Roman', Times, serif; font-size: 6px" />
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="Yes" Width="60px" BackColor="White" ForeColor="Black" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="No" Width="60px" BackColor="White" ForeColor="Black" />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="LinkButton3" DisplayModalPopupID="ModalPopupExtender2"/>
                    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="LinkButton3" PopupControlID="Panel2" OkControlID="Button3" CancelControlID="Button4"></ajaxToolkit:ModalPopupExtender>
                    <br />
                    <br />
                    <br />
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" />
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
    <asp:LinkButton ID="LinkButton2" runat="server"></asp:LinkButton>
    <br />
    <br />
   &nbsp; <asp:Panel ID="Panel1" runat="server" BackColor="#cccccc" style="margin-top: 19px;display:none" Height="400px" Width="472px" >
       
       <center>
        <table style="width: 95%"  >
            <tr>
                <td style="width: 505px" class="input-medium">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="ID"></asp:Label>
                    
                </td>
                <td style="width: 480px" class="input-medium">
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="285px"  BackColor="Transparent" BorderStyle="None" ForeColor="Black" ></asp:TextBox>
                
                </td>
            </tr>
            <tr>
                <td style="width: 505px" class="input-medium">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Disease Name"></asp:Label>
                </td>
                <td style="width: 480px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="40px" Width="285px" BackColor="White" ForeColor="Black" ></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 505px" class="input-medium">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Symptoms"></asp:Label>
                </td>
                <td style="width: 480px">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="80px" Width="285px" BackColor="White" ForeColor="Black"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 505px; height: 53px;" class="input-medium">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Description"></asp:Label>
                </td>
                <td style="width: 463px; height: 53px;">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="80px" Width="285px" BackColor="White" ForeColor="Black" ></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <br />
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#808080" ForeColor="Black" Height="40px" Text="UPDATE" Width="133px" OnClick="Save" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#808080" ForeColor="Black" Height="40px" Text="CANCEL" Width="133px" />
                    <br />
                </td>
            </tr>
        </table>
           </center>
        <br />
        <br />
       
    </asp:Panel>
    <br />
    <br />
    <br />
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton2" PopupControlID="Panel1" CancelControlID="Button2"></ajaxToolkit:ModalPopupExtender>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyurJeevaConnectionString4 %>" SelectCommand="SELECT * FROM [diseasedetails]" DeleteCommand="DELETE FROM [diseasedetails] WHERE [id] = @id" InsertCommand="INSERT INTO [diseasedetails] ([diseasename], [symptoms], [remedies]) VALUES (@diseasename, @symptoms, @remedies)" UpdateCommand="UPDATE [diseasedetails] SET [diseasename] = @diseasename, [symptoms] = @symptoms, [remedies] = @remedies WHERE [id] = @id">
        
        <InsertParameters>
            <asp:Parameter Name="diseasename" Type="String" />
            <asp:Parameter Name="symptoms" Type="String" />
            <asp:Parameter Name="remedies" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="diseasename" Type="String" />
            <asp:Parameter Name="symptoms" Type="String" />
            <asp:Parameter Name="remedies" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
     
</asp:Content>

