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
        wenjuan += Label3.Text + "<br/>" +cb(CheckBoxList1)+ "<br/>";
        wenjuan += Label4.Text + "<br/>" + cb(CheckBoxList2) + "<br/>";
        wenjuan += Label5.Text + "<br/>" + RadioButtonList5.Text + "<br/>";
        wenjuan += Label6.Text + "<br/>" + RadioButtonList6.Text + "<br/>";
        wenjuan += Label7.Text + "<br/>" + RadioButtonList7.Text + "<br/>";
        wenjuan += Label8.Text + "<br/>" + RadioButtonList8.Text + "<br/>";
        wenjuan += Label9.Text + "<br/>" +tongji() + "<br/>";
        wenjuan += Label10.Text + "<br/>" + RadioButtonList10.Text + "<br/>";

        string sql = "insert into diaocha (mingzi,shouji,xingbie,guoxiao,nianji,xingbie1,wenjuan) values('" 
            +TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +"','"+ RadioButtonList2.Text + "','"+wenjuan+"')";
        db.ExecNon(sql);
        Label11.Text = "非常感謝您的耐心填寫! 我們將在1~2日內發送簡訊至您的手機，若未收到，請您直接來電與我們聯絡，聯絡電話為2961-1542。也歡迎您加入我們「優越資優FB粉絲團」，了解我們最新活動與課程!";

    }
    protected string cb(CheckBoxList cc)
    {
        string tt = "";
        for (int i = 0; i < cc.Items.Count; i++)
        {
            if (cc.Items[i].Selected == true)
            { tt += cc.Items[i].Value + ";"; }
        }
        if (tt.EndsWith(";"))
            tt=tt.Substring(0, tt.Length - 1);
        return tt;
    }
    protected string tongji()
    {
        string tt = "";
        if (DropDownList1.Text != "0") tt += DropDownList1.Text + ",離學校近;";
        if (DropDownList2.Text != "0") tt += DropDownList2.Text + ",教育理念;";
        if (DropDownList3.Text != "0") tt += DropDownList3.Text + ",管理完善;";
        if (DropDownList4.Text != "0") tt += DropDownList4.Text + ",親友口碑;";
        if (DropDownList5.Text != "0") tt += DropDownList5.Text + ",師資;";
        if (DropDownList6.Text != "0") tt += DropDownList6.Text + ",班級人數;";
        if (DropDownList7.Text != "0") tt += DropDownList7.Text + ",升學率;";
        if (DropDownList8.Text != "0") tt += DropDownList8.Text + ",學費優惠;";
        if (DropDownList9.Text != "0") tt += DropDownList9.Text + ",硬體設備;";
        return tt;
    }
 
}