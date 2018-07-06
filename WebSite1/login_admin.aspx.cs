using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt_user.Text.Trim() == "admin" && txt_pass.Text.Trim() == "12345")
        {
            Session["user_admin"] = "user_admin";
            Response.Redirect("~/admin/default.aspx");
        }
        else
        {
            Label1.Text = "نام کاربری یا رمز عبور اشتباه است";
        }
    }
}