<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p1.aspx.cs" Inherits="p1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


p.MsoNormal{
margin-bottom:.0001pt;
font-family:Calibri;
font-size:12.0000pt;
            margin-left: 0pt;
            margin-right: 0pt;
            margin-top: 0pt;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:320px; ">
        <asp:Label ID="Label11" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        第一部份：基本資料<br />
        <br/>
    家長姓名:<asp:TextBox ID="TextBox1" runat="server" Width="51px"></asp:TextBox>  手機:<asp:TextBox ID="TextBox2" runat="server" Width="111px"></asp:TextBox>
<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>先生</asp:ListItem>
            <asp:ListItem>小姐</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        孩子就讀學校年級：<br />
        <asp:TextBox ID="TextBox3" runat="server" Width="137px"></asp:TextBox>
        國小<asp:TextBox ID="TextBox4" runat="server" Width="41px"></asp:TextBox>
        年級 性別： 
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>男生</asp:ListItem>
            <asp:ListItem>女生</asp:ListItem>
        </asp:RadioButtonList>
        <br />
       
           第二部份：問卷內容
          
        <br />
        <br />
         <asp:Label ID="Label1" runat="server" Text="1.您對於孩子課業學習主動性的要求是："></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem>平常就要求 </asp:ListItem>
            <asp:ListItem>隔日有小考才要求</asp:ListItem>
            <asp:ListItem>期中期末考前陪伴複習</asp:ListItem>
            <asp:ListItem>全權交給安親課輔班</asp:ListItem>
            <asp:ListItem>讓孩子自我安排</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="2.您的孩子週一至週五平均每日上網時間："></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
             <asp:ListItem>不會上網 </asp:ListItem>
            <asp:ListItem>除了查資料外嚴格禁止</asp:ListItem>
            <asp:ListItem>1小時內</asp:ListItem>
            <asp:ListItem>2小時</asp:ListItem>
            <asp:ListItem>沒有限制</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="3.您對於孩子的課外才藝安排：(可複選)"></asp:Label>
         <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
             <asp:ListItem>注重數學科學習</asp:ListItem>
            <asp:ListItem>注重國語文學習</asp:ListItem>
            <asp:ListItem>注重美語學習</asp:ListItem>
            <asp:ListItem>安排音樂、舞蹈、繪畫、球類等才藝</asp:ListItem>
            <asp:ListItem>沒特別安排</asp:ListItem>
        </asp:CheckBoxList>
        <br />
               <asp:Label ID="Label4" runat="server" Text="4.您目前希望得到哪方面的相關資訊：(可複選)"></asp:Label>
         <br />
        <asp:CheckBoxList ID="CheckBoxList2" runat="server">
             <asp:ListItem>寒暑假短期營隊活動</asp:ListItem>
            <asp:ListItem>英文檢定</asp:ListItem>
            <asp:ListItem>學校課業加強</asp:ListItem>
            <asp:ListItem>私校入學</asp:ListItem>
            <asp:ListItem>十二年國教制度</asp:ListItem>
        </asp:CheckBoxList>
        <br />
                       <asp:Label ID="Label5" runat="server" Text="5.對於孩子國小階段學習，您最注重的是："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList5" runat="server">
             <asp:ListItem>孩子快樂學習就好 </asp:ListItem>
            <asp:ListItem>課業成績</asp:ListItem>
            <asp:ListItem>孩子學習態度</asp:ListItem>
            <asp:ListItem>孩子在校人際關係</asp:ListItem>
            <asp:ListItem>特殊才藝的養成(音樂、美術、舞蹈等)</asp:ListItem>
        </asp:RadioButtonList>
        <br />
              <asp:Label ID="Label6" runat="server" Text="6.孩子目前最讓您煩惱的問題是："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList6" runat="server">
             <asp:ListItem>身體健康 </asp:ListItem>
            <asp:ListItem>課業表現</asp:ListItem>
            <asp:ListItem>同儕相處</asp:ListItem>
            <asp:ListItem>親子關係</asp:ListItem>
            <asp:ListItem>異性關係</asp:ListItem>
        </asp:RadioButtonList>
        <br />
         <asp:Label ID="Label7" runat="server" Text="7.目前孩子學科部分表現最差強人意的科目是："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList7" runat="server">
             <asp:ListItem>國文</asp:ListItem>
            <asp:ListItem>英文</asp:ListItem>
            <asp:ListItem>數學</asp:ListItem>
            <asp:ListItem>自然</asp:ListItem>
            <asp:ListItem>社會</asp:ListItem>
        </asp:RadioButtonList>
        <br />
                 <asp:Label ID="Label8" runat="server" Text="8.承(7)，學習效果不佳主因為何："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList8" runat="server">
             <asp:ListItem>沒有學習意願 </asp:ListItem>
            <asp:ListItem>理解力欠佳</asp:ListItem>
            <asp:ListItem>缺乏適當引導</asp:ListItem>
            <asp:ListItem>基礎薄弱 </asp:ListItem>
            <asp:ListItem>沒有充分時間複習</asp:ListItem>
        </asp:RadioButtonList>
        <br />
                    <asp:Label ID="Label9" runat="server" Text="9.如果孩子未來有學科課程需求，請問您選擇補習班時最注重的是：(請排序前五名，填入數字1~5)"></asp:Label>
         <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>離學校近
                 
        <br />
                <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>教育理念<br />
                <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>管理完善<br />
                <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>親友口碑
                 
        <br />
                <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>師資
                 
        <br />
                <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>班級人數
        <br />
            <asp:DropDownList ID="DropDownList7" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>升學率
        <br />
            <asp:DropDownList ID="DropDownList8" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>學費優惠  <br />
            <asp:DropDownList ID="DropDownList9" runat="server">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>硬體設備
         
        <br />
           <br />
           <asp:Label ID="Label10" runat="server" Text="10.請問您願意收到我們最新活動及課程優惠資訊嗎？(以簡訊方式)"></asp:Label>
       <asp:RadioButtonList ID="RadioButtonList10" runat="server">
             <asp:ListItem>願意</asp:ListItem>
            <asp:ListItem>不願意</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" Width="161px" />
        <br />
        <br />
        </div>
    </form>
</body>
</html>
