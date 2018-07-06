<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="regester.aspx.cs" Inherits="regester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 288px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right" 
        style="width: 596px; color: #FFFFFF; background-color: #FF0066; height: 46px;">&nbsp; عضو 
    سایت شوید&nbsp;&nbsp; </div>
    <div align="center">
<table width="600" bgcolor="#FFF7FF">
<tr>
<td align="right" class="style5">
    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
    </td>
<td class="style40">نام </td>
</tr>
<tr>
<td align="right" class="style5">
    <asp:TextBox ID="txt_user_name" runat="server"></asp:TextBox>
    </td>
<td class="style40">نام کاربری</td>
</tr>
<tr>
<td align="right" class="style5">
    <asp:TextBox ID="txt_pass1" runat="server" TextMode="Password"></asp:TextBox>
    </td>
<td class="style40">رمز عبور</td>
</tr>
<tr>
<td align="right" class="style5">
    <asp:TextBox ID="txt_pass_2" runat="server" TextMode="Password"></asp:TextBox>
    </td>
<td class="style40">تکرار رمز</td>
</tr>

<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="ثبت نام" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
</tr>

</table>

</div>
</asp:Content>

