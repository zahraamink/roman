using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            if (Session["name2"] == null)
            {
                Menu1.Visible = false;
                Response.Write("شما اجازه ارسال رمان ندارید");
            }
        }
    }
}
