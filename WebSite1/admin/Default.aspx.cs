using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    ser ser = new ser();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_admin"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ser.Rank = Convert.ToBoolean(CheckBox1.Checked);
        ser.Uid = Convert.ToInt32(DropDownList1.SelectedValue);
        ser.ok_ersal();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["user_admin"] = null;
        Response.Redirect("~/login_admin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        ser.Title = TextBox1.Text;
        ser.Zhaner = TextBox2.Text;
        ser.Insert_roman();
        GridView1.DataBind();

    }
}