using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            SqlDataReader dr=db.ExecSqlDataReader("select * from diaocha where id=" + e.CommandArgument);
            if(dr.Read())
            {
                string temp = "<br />"+dr["shouji"].ToString() + "," + dr["mingzi"].ToString() + dr["xingbie"].ToString() + "<br />" +
                    dr["guoxiao"].ToString() + "國小," + dr["nianji"].ToString() + "年級," + dr["xingbie1"].ToString() + "生<br /><br />" + dr["wenjuan"].ToString();
                Session["cha"] = temp;
            }
           
          
            Response.Redirect("cha.aspx");
          
        }
    }
}