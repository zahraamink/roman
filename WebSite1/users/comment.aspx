<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="comment.aspx.cs" Inherits="users_comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" dir="rtl">
 <p style="color: #FFFFFF; background-color: #FF0066">نظرات </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         Width="600px" GridLines="None" 
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
 </div>
    <div align="center" dir="rtl">
    <p style="color: #FFCCFF; background-color: #000000">&nbsp;</p>
        <div align="center">
            <asp:Panel ID="Panel1" runat="server" Visible="False">
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

</div>
    
        </div>
</asp:Content>

