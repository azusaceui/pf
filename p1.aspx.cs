using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class p1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string wenjuan = "";
        wenjuan += Label1.Text + "<br/>" + RadioButtonList3.Text + "<br/>";
        wenjuan += Label2.Text + "<br/>" + RadioButtonList4.Text + "<br/>";
        wenjuan += Label1.Text + "<br/>" + RadioButtonList3.Text + "<br/>";
        wenjuan += Label1.Text + "<br/>" + RadioButtonList3.Text + "<br/>";
        wenjuan += Label1.Text + "<br/>" + RadioButtonList3.Text + "<br/>";
        wenjuan += Label1.Text + "<br/>" + RadioButtonList3.Text + "<br/>";



        Label11.Text = "非常感謝您的耐心填寫! 我們將在1~2日內發送簡訊至您的手機，若未收到，請您直接來電與我們聯絡，聯絡電話為2961-1542。也歡迎您加入我們「優越資優FB粉絲團」，了解我們最新活動與課程!";
        Label11.Text = wenjuan;
    }
 
}