﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
          
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session["name"] = null;
        Response.Redirect("~/default.aspx");
    }
}