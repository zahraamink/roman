<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: x-small;
            color: #666666;
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
.tt:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #019ad2), color-stop(1, #33bdef));
	background:-moz-linear-gradient(top, #dcfc03 5%, #dcfc03 100%);
	background:-webkit-linear-gradient(top, #dcfc03 5%, #dcfc03 100%);
	background:-o-linear-gradient(top, #dcfc03 5%, #dcfc03 100%);
	background:-ms-linear-gradient(top, #dcfc03 5%, #dcfc03 100%);
	background:linear-gradient(to bottom, #dcfc03 5%, #dcfc03 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dcfc03', endColorstr='#dcfc03',GradientType=0);
	background-color:#dcfc03;
}
.tt:active {
	position:relative;
	top:1px;
}
        
    .style91
    {
        width: 37px;
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
            font-size: small;
            color: #6600CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="color: #FFFFFF; background-color: #FF0066; width: 600px; font-size: small; top: 0px; height: 51px;" 
    align="right">&nbsp;&nbsp; رمان ها&nbsp;<img alt="" src="image/ghalb.png" 
            width="30" />&nbsp;&nbsp; </div>
    <div align="center">

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
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("subject") %>' 
                            style="color: #333333"></asp:Label>
                    </div>
                    <table style="width: 577px">
                    <tr>
                    <td align="center" class="style92"><a href="<%# Eval("id","next.aspx?id={0}") %>" style="color: #FF0066; font-size: small" target="_blank">ادامه رمان</a></td>
                    <td align="left" class="style93">
                        &nbsp;
                        <a href="<%# Eval("id","coment.aspx?id={0}") %>" style="color: #FF0066; font-size: small" target="_blank">نظرات</a>
                        &nbsp;
                        </td>
                        <td align="center" dir="rtl" class="style94">
                            &nbsp;</td>
                        <td class="style22">&nbsp;</td>
                            <td class="style22" align="right">
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
        SelectCommand="SELECT * FROM [tbl_post] ORDER BY [id] DESC">
    </asp:SqlDataSource>
    </div>
</asp:Content>

