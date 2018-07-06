using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
public partial class login : System.Web.UI.Page
{
    
    ser ser = new ser();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ser.Uname = txt_user.Text;
        ser.Password = txt_pass.Text;
        DataTable dt = ser.login();
        if (dt.Rows.Count > 0)
        {
            
            if (Boolean.Parse(dt.Rows[0][4].ToString()) == true)
            {     
                Session["user_name"] = txt_user.Text.Trim();
                Session["admin"] = dt.Rows[0][2].ToString();
                Response.Redirect("~/users/default.aspx");
         
            }
            else
            {
                Session["user_name"] = txt_user.Text.Trim();
                Session["name"] = dt.Rows[0][2].ToString();
                Response.Redirect("~/default.aspx");

           

             
            }
        }
        else
        {
            Label1.Text = "نام کاربری یا رمز عبور اشتباه است";
        }
    }
}