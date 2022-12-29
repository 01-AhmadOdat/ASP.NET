<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="WebForm1.aspx.cs" Inherits="task_state_management.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br />
            <asp:TextBox ID="TextBox1" ViewStateMode="Disabled" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="fill the blank" ForeColor="#FF3300"></asp:RequiredFieldValidator><br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="TextBox2" ViewStateMode="Disabled" runat="server"></asp:TextBox><br />

            <asp:CheckBox ID="CheckBox1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
