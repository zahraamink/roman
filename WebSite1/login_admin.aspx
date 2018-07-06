<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_admin.aspx.cs" Inherits="login_admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p align="center" 
            style="width: 100%; color: #FFFFFF; background-color: #CC3300">ورود مدیر ارشد</p>
    <div align="center">

<table style="direction: ltr">
<tr>
<td>
    <asp:TextBox ID="txt_user" runat="server"></asp:TextBox>
    </td>
<td class="style6">نام کاربری</td>
</tr>
<tr>
<td>
    <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
    </td>
<td class="style6">رمز</td>
</tr>

<tr>
<td colspan="2">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="ورود" style="margin-bottom: 0px" Width="71px" />
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    <br />
    </td>
</tr>

</table>

</div>
    
    </div>
    </form>
</body>
</html>
