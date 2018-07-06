<%@ Page Language="C#" AutoEventWireup="true" CodeFile="coment.aspx.cs" Inherits="admin_coment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            height: 38px;
        }
        .style4
        {
            height: 38px;
            width: 374px;
        }
        .style5
        {
            width: 374px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div align="center" dir="rtl">
 <p style="color: #FFFFFF; background-color: #FF0066; height: 52px;">نظرات برای رمان</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="600px" GridLines="None" 
         onrowdatabound="GridView1_RowDataBound">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                <div style="background-color: #F3F3F3">
                    <div dir="rtl">
                        <asp:Label ID="lbl_user_id" runat="server" Text='<%# Eval("user_id") %>' 
                            style="font-size: small; color: #FF6600"></asp:Label>
                    </div>
                    <div dir="rtl">
                        <asp:Label ID="lbl_user_cm" runat="server" Text='<%# Eval("comment") %>' 
                            style="font-size: small"></asp:Label>
                    </div>
                    <br />
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:romanConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_comment] WHERE ([post_id] = @post_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="post_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
 </div>
    <div align="center" dir="rtl">
    <p style="color: #FFCCFF; background-color: #000000; height: 52px;">نظر خود را ثبت کنید</p>
        <div align="center">
            <asp:Panel ID="Panel1" runat="server">
            <table>
<tr>
<td class="style3">
    نظر</td>
<td class="style4">
    <asp:TextBox ID="txt_comment" runat="server" 
        Width="374px" dir="rtl" Height="138px" TextMode="MultiLine"></asp:TextBox>
    </td>
</tr>
<tr>
<td>
    &nbsp;</td>
<td class="style5">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="margin-bottom: 0px" Text="ثبت" Width="71px" />
    </td>
</tr>

<tr>
<td colspan="2">
    <asp:TextBox ID="txt_user" runat="server" Enabled="False" EnableTheming="True" 
        Visible="False" Width="359px"></asp:TextBox>
    <br />
    </td>
</tr>

</table>
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <asp:Label ID="Label1" runat="server" 
                    Text="برای ارسال نظر لطفا وارد سایت شوید "></asp:Label>
            </asp:Panel>
</div>
    
        </div>
    </form>
</body>
</html>
