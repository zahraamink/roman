using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class regester : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt_pass1.Text.Trim() == txt_pass_2.Text.Trim())
        {
            ser ser = new ser();
            ser.Name = txt_name.Text;
            ser.Uname = txt_user_name.Text;
            ser.Password = txt_pass1.Text;
            ser.Regester_user();

            Session["user_name"] = txt_user_name.Text.Trim();
            Session["name"] = txt_name.Text.Trim();
            Response.Redirect("~/admin/default.aspx");
        }
        else
        {
            Response.Write("رمز عبورها با هم برابر نیستند");
        }
    }
}