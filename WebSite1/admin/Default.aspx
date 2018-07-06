<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <div align="center" style="color: #FFFFFF; background-color: #CC6600">پنل مدیریت کل&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" 
            style="color: #FFFF00" Target="_blank">مشاهده سایت</asp:HyperLink>
&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="color: #FFFFFF">خروج</asp:LinkButton>
        </div>
   <div>
       <div align="center">
           <p>
               تایید مجوز برای کاربران</p>
           <br />
           <asp:DropDownList ID="DropDownList1" runat="server" 
               DataSourceID="SqlDataSource1" DataTextField="user_name" DataValueField="uid" 
               Width="200px">
           </asp:DropDownList>
           <br />
           <asp:CheckBox ID="CheckBox1" runat="server" Text="اجازه ارسال رمان دارد" />
           <br />
           <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ثبت" 
               Width="69px" />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:romanConnectionString %>" 
               SelectCommand="SELECT * FROM [tbl_users] ORDER BY [uid] DESC">
           </asp:SqlDataSource>
           <br />
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           نام رمان<br />
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           ژانر رمان<br />
           <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
               Text="ثبت رمان" />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" 
               ForeColor="#333333" GridLines="None" Width="591px">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:CommandField ShowSelectButton="True" SelectText="انتخاب" />
                   <asp:CommandField ShowEditButton="True" CancelText="انصراف" EditText="ویرایش" 
                       UpdateText="ثبت ویرایش" />
                   <asp:CommandField ShowDeleteButton="True" DeleteText="حذف" />
                   <asp:BoundField DataField="id" HeaderText="کد" InsertVisible="False" 
                       ReadOnly="True" SortExpression="id" />
                   <asp:BoundField DataField="title" HeaderText="تیتر" SortExpression="title" />
                   <asp:BoundField DataField="zhaner" HeaderText="ژانر" 
                       SortExpression="zhaner" />
               </Columns>
               <EditRowStyle BackColor="#7C6F57" />
               <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#E3EAEB" />
               <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#F8FAFA" />
               <SortedAscendingHeaderStyle BackColor="#246B61" />
               <SortedDescendingCellStyle BackColor="#D4DFE1" />
               <SortedDescendingHeaderStyle BackColor="#15524A" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
               ConnectionString="<%$ ConnectionStrings:romanConnectionString %>" 
               DeleteCommand="DELETE FROM tbl_noveljenre WHERE (id = @id)" 
               SelectCommand="SELECT * FROM [tbl_noveljenre] ORDER BY [id] DESC" 
               UpdateCommand="UPDATE tbl_noveljenre SET title = @title, zhaner = @zhaner WHERE (id = @id)">
           </asp:SqlDataSource>
       </div>
        </div>
    </div>
    </form>
</body>
</html>
