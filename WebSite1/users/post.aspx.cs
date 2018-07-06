using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class admin_post : System.Web.UI.Page
{
    ser ser = new ser();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ser.Uname = Session["user_name"].ToString();


            DataTable dt = ser.get_uid(); 
           
           
            if (dt.Rows.Count > 0)
            {
                HiddenField1.Value = dt.Rows[0][0].ToString();

            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("..") + "//upload//";  

        String[] my_pdf = { ".pdf" }; 
        string aki = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
       


        if (Array.IndexOf(my_pdf, aki.ToLower()) < 0)
        {
            Response.Write("شما اجازه آپلود اين فايل را نداريد");
            return;



        }
     
        else
        {
            ser.Title = txt_title.Text;
            ser.Subject1 = txt_roman.Text;
            ser.Subject2 = txt_roman2.Text;
            ser.Uid = Convert.ToInt32(HiddenField1.Value);
            ser.Rid = Convert.ToInt32(DropDownList1.SelectedValue);
            ser.Zhaner = txt_zhaner.Text;
            ser.Url = FileUpload1.FileName;
            ser.Post_user();
          
            GridView1.DataBind();

        }
   

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
 

        ser.Uid =Convert.ToInt32( DropDownList1.SelectedValue);
        DataTable dt = ser.get_zshanerid();
       
      
        if (dt.Rows.Count > 0)
        {
            txt_zhaner.Text = dt.Rows[0][0].ToString();

        }

    }
}