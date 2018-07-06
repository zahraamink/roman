using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class admin_coment : System.Web.UI.Page
{
   

    ser ser = new ser();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] == null)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
        else
        {
            ser.Uname = Session["user_name"].ToString();
            if(ser.get_uid().Rows.Count>0)
            {

                txt_user.Text = ser.get_uid().Rows[0][0].ToString();

                
            }
     
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ser.Uid = Convert.ToInt32(txt_user.Text.Trim());
        ser.Pid = Convert.ToInt32(Request.QueryString["id"]);
        ser.Comand = txt_comment.Text.Trim();

          ser.Insert_comand();
     
        Panel1.Visible = false;
        Panel2.Visible = true;
        Label1.Text = "تشکر نظر شما ثبت شد";
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label a = (Label)e.Row.FindControl("lbl_user_id");

            ser.Uid = Convert.ToInt32(a.Text);
            DataTable dt = ser.row_nazar();
            if (dt.Rows.Count > 0)
            {
                a.Text ="نظر دهنده : "+ dt.Rows[0][0].ToString();

            }
        }
    }
}