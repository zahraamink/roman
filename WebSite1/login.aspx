<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right" 
        style="width: 596px; color: #FFFFFF; background-color: #FF0066; height: 46px;">&nbsp; 
        وارد 
    سایت شوید&nbsp;&nbsp; </div>
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
</asp:Content>

