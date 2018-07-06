<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="post.aspx.cs" Inherits="admin_post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 81px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center"><table>
<tr>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id" 
        Width="100%" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:romanConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_noveljenre]"></asp:SqlDataSource>
    </td>
<td class="style1">انتخاب رمان</td>
</tr>
<tr>
<td>
    <asp:TextBox ID="txt_zhaner" runat="server" Enabled="False" Width="472px"></asp:TextBox>
    </td>
<td class="style1">ژانر</td>
</tr>
<tr>
<td>
    <asp:TextBox ID="txt_title" runat="server" Width="500px" dir=rtl></asp:TextBox>
    </td>
<td class="style1">تیتر</td>
</tr>
<tr>
<td>
    <asp:TextBox ID="txt_roman" runat="server" Height="171px" TextMode="MultiLine" 
        Width="500px" dir=rtl></asp:TextBox>
    <br />
    </td>
<td class="style1">رمان</td>
</tr>
<tr>
<td>
    <asp:TextBox ID="txt_roman2" runat="server" Height="171px" TextMode="MultiLine" 
        Width="500px" dir=rtl></asp:TextBox>
    </td>
<td class="style1">ادامه</td>
</tr>
<tr>
<td>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    </td>
<td class="style1">آپلود رمان</td>
</tr>
<tr>
<td>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ثبت" 
        Width="69px" />
    </td>
<td class="style1">&nbsp;</td>
</tr>
</table></div>
<div align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="انتخاب" />
            <asp:CommandField ShowEditButton="True" EditText="ویرایش" UpdateText="ویرایش" />
            <asp:CommandField ShowDeleteButton="True" DeleteText="حذف" EditText="ویرایش" 
                UpdateText="ویرایش" />
            <asp:BoundField DataField="id" HeaderText="کد" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="title" HeaderText="تیتر" SortExpression="title" />
            <asp:BoundField DataField="subject" HeaderText="رمان" 
                SortExpression="subject" />
                  <asp:BoundField DataField="subject2" HeaderText="ادامه رمان" 
                SortExpression="subject2" />
            <asp:BoundField DataField="user_id" HeaderText="کد کاربر" 
                SortExpression="user_id" />
            <asp:BoundField DataField="roman_id" HeaderText="کد رمان" 
                SortExpression="roman_id" />
            <asp:BoundField DataField="roman_zhaner" HeaderText="ژانر رمان" 
                SortExpression="roman_zhaner" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:romanConnectionString %>" 
        DeleteCommand="DELETE FROM tbl_post WHERE (id = @id)" 
        SelectCommand="SELECT * FROM [tbl_post] ORDER BY [id] DESC" UpdateCommand="UPDATE tbl_post SET title = @title, subject = @subject,subject2 = @subject2, user_id = @user_id, roman_id= @roman_id ,roman_zhaner=@roman_zhaner
  WHERE (id = @id)"></asp:SqlDataSource>
</div>
</asp:Content>

