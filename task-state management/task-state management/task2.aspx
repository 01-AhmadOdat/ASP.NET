<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="task_state_management.task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:DropDownList runat="server" ID="drop" AutoPostBack="true" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">
                <asp:listitem Value="red">red</asp:listitem>
                <asp:listitem Value="blue">blue</asp:listitem>
                <asp:listitem Value="green">green</asp:listitem>
            </asp:DropDownList>

        </div>
    </form>
</body>
</html>
