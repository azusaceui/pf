using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["OK"] == null) Response.Redirect("login.aspx");
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "cha")
        {
            Session["cha"] = db.ExecuteScalar("select wenjuan from diaocha where id=" + e.CommandArgument).ToString();
            Response.Redirect("cha.aspx");
        }
    }
}