using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=roman;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["name"] != null)
        {
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            Button1.Text = "پنل مدیریتی";
            Label2.Text = Session["name"].ToString();

        }
        System.Globalization.PersianCalendar persiandate = new System.Globalization.PersianCalendar();
        string p_date = persiandate.GetYear(System.DateTime.Now) + "/";
        if (persiandate.GetMonth(System.DateTime.Now) < 10)
            p_date += "0";

        p_date = p_date + persiandate.GetMonth(System.DateTime.Now) + "/";

        if (persiandate.GetDayOfMonth(System.DateTime.Now) < 10)
            p_date += "0";

        p_date = p_date + persiandate.GetDayOfMonth(System.DateTime.Now);

        Label1.Text = p_date;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "پنل مدیریتی")
        {
            Response.Redirect("~/users/default.aspx");
        }
        else
        {
            cn.Open();

            SqlDataAdapter ad = new SqlDataAdapter("select * from tbl_users where user_name='" + TextBox1.Text.Trim() + "' and password='" + TextBox2.Text.Trim() + "'", cn);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            cn.Close();
            if (dt.Rows.Count > 0)
            {

                if (Boolean.Parse(dt.Rows[0][4].ToString()) == true)
                {
                    Session["user_name"] = TextBox1.Text.Trim();
                    Session["name"] = dt.Rows[0][2].ToString();
                    Session["name2"] = dt.Rows[0][2].ToString();
                    Response.Redirect("~/users/default.aspx");

                }
                else
                {
                    Session["user_name"] = TextBox2.Text.Trim();
                    Session["name"] = dt.Rows[0][2].ToString();
                    Response.Redirect("~/default.aspx");




                }
            }
            else
            {
                Label2.Text = "نام کاربری یا رمز عبور اشتباه است";
            }
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
