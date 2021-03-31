<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editproduct.aspx.cs" Inherits="Company_editproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 67%;">
            <tr>
                <td >&nbsp;brand&nbsp;</td>
                <td >
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <d class="auto-style1"></d>
            </tr>
            <tr>
                <td>product name</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Labe2"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="update" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
