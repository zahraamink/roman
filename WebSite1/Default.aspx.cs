using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class _Default : System.Web.UI.Page
{
    ser ser = new ser();
    protected void Page_Load(object sender, EventArgs e)
    {

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
                a.Text = dt.Rows[0][0].ToString();

            }
        }
    }
}