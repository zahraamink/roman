<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="next.aspx.cs" Inherits="next" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: x-small;
            color: #666666;
        }
    .style92
    {
        width: 69px;
    }
    .style93
    {
        width: 55px;
    }
        .style94
        {
            width: 379px;
        }
      .tt {
	-moz-box-shadow: 0px 1px 0px 0px #f0f7fa;
	-webkit-box-shadow: 0px 1px 0px 0px #f0f7fa;
	box-shadow: 0px 1px 0px 0px #f0f7fa;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #4f023c), color-stop(1, #4f023c));
	background:-moz-linear-gradient(top, #4f023c 5%, #4f023c 100%);
	background:-webkit-linear-gradient(top, #4f023c 5%, #019ad2 100%);
	background:-o-linear-gradient(top, #4f023c 5%, #4f023c 100%);
	background:-ms-linear-gradient(top, #4f023c 5%, #4f023c 100%);
	background:linear-gradient(to bottom, #4f023c 5%, #4f023c 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#4f023c', endColorstr='#4f023c',GradientType=0);
	background-color:#33bdef;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #057fd0;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:12px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px -1px 0px #5b6178;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <div style="color: #FFFFFF; background-color: #FF0066; width: 600px; font-size: small; top: 0px; height: 51px;" 
    align="right">&nbsp;&nbsp; رمان ها&nbsp;<img alt="" src="image/ghalb.png" 
            width="30" />&nbsp;&nbsp; </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="None" 
        Width="600px" onrowdatabound="GridView1_RowDataBound">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                <div style="background-color: #FFFFFF; border-bottom-color: #CC0066; border-bottom-width: 5px; border-bottom-style: solid;">
                    <div dir="rtl" style="font-size: small; padding-right: 12px;">
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("title") %>' 
                            style="color: #FF5050; font-weight: 700; font-size: medium;"></asp:HyperLink>
                    </div>
                    <div align="right" dir="rtl" style="font-size: small; padding-right: 12px;">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("subject2") %>' 
                            style="color: #333333"></asp:Label>
                    </div>
                    <table style="width: 577px">
                    <tr>
                    <td align="center" class="style92">&nbsp;</td>
                    <td align="left" class="style93">
                        &nbsp;</td>
                        <td align="center" dir="rtl" style="color: #FF0066; font-size: x-small">
                            &nbsp;</td>
                        <td class="style22">&nbsp;</td>
                            <td class="style94" align="right">
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_user_id" runat="server" CssClass="style2" 
                                    Text='<%# Eval("user_id") %>'></asp:Label>
                                &nbsp;&nbsp; </td>

                                <td align="right" dir="rtl" style="font-size: xx-small; color: #666666" 
                            class="style91">
                                    نویسنده :</td>
                    </tr>
                    </table>
                    <div dir="rtl" align="right" 
                        
                        style="font-size: x-small; color: #666666; padding-right: 10px; font-style: italic;"><%# Eval("roman_zhaner")%></div>
                    <div align="right" dir="rtl" 
                        style="font-size: x-small; color: #666666; padding-right: 10px; ">
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="tt" 
                            NavigateUrl='<%# Eval("url","~/upload/{0}") %>' style="font-weight: 700">دانلود رمان</asp:HyperLink>
                    </div>
                <br />
                 </div>
                  <br />
                   <br />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:romanConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_post] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </div>
     <div align="center" dir="rtl">
 <p style="color: #FFFFFF; background-color: #FF0066">نظرات برای رمان</p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" Width="600px" GridLines="None" 
         onrowdatabound="GridView1_RowDataBound">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                <div style="background-color: #F3F3F3">
                    <div dir="rtl" align="right" style="padding-right: 10px">
                        <asp:Label ID="lbl_user_id" runat="server" Text='<%# Eval("user_id") %>' 
                            style="font-size: small; color: #FF6600"></asp:Label>
                    </div>
                    <div dir="rtl" align="right" style="padding-right: 10px">
                        <asp:Label ID="lbl_user_cm" runat="server" Text='<%# Eval("comment") %>' 
                            style="font-size: small"></asp:Label>
                    </div>
                    <br />
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:romanConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_comment] WHERE ([post_id] = @post_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="post_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
 </div>
    <div align="center" dir="rtl">
    <p style="color: #FFCCFF; background-color: #000000">نظر خود را ثبت کنید</p>
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
                    Text="برای اراسل نظر لطفا وارد سایت شوید "></asp:Label>
            </asp:Panel>
</div>
    
        </div>
</asp:Content>

