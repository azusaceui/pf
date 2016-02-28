using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["cha"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}