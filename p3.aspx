﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p3.aspx.cs" Inherits="p3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title></title>
</head>
<body style="background-color: #ECE7D8;">
      <form id="form1" runat="server">
    <div style="width:320px;  margin-left:auto;margin-right:auto">
        <asp:Label ID="Label11" runat="server" ForeColor="Red"></asp:Label>
        <br />
            <div style ="background-color:#585656;color:white;">
        第一部份：基本資料
           </div>
        <br/>
              家長貴姓:<asp:TextBox ID="TextBox1" runat="server" Width="51px"></asp:TextBox>  
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>先生</asp:ListItem>
            <asp:ListItem>小姐</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        手機:<asp:TextBox ID="TextBox2" runat="server" Width="111px"></asp:TextBox>

        &lt;兌換優惠憑證&gt;<br />
        孩子就讀學校年級：<br />
        <asp:TextBox ID="TextBox3" runat="server" Width="148px"></asp:TextBox>
        國小<asp:TextBox ID="TextBox4" runat="server" Width="41px"></asp:TextBox>
        年級  
        <br />
        性別： 
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
              
        </asp:RadioButtonList>
        <br />
        <br />
        <div style ="background-color:#585656;color:white;">
           第二部份：問卷內容
          
          </div>
          
   
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
        <asp:Label ID="Label2" runat="server" Text="2.您的孩子週一至週五平均每日使用手機時間："></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
             <asp:ListItem>沒有手機 </asp:ListItem>
            <asp:ListItem>平日禁止使用</asp:ListItem>
            <asp:ListItem>1小時內</asp:ListItem>
            <asp:ListItem>2小時</asp:ListItem>
            <asp:ListItem>沒有限制</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="3.孩子目前最讓您煩惱的問題是："></asp:Label>
         <br />
         <asp:RadioButtonList ID="RadioButtonList11" runat="server">
               <asp:ListItem>身體健康</asp:ListItem>
            <asp:ListItem>學科成績</asp:ListItem>
             <asp:ListItem>手機使用</asp:ListItem>
            <asp:ListItem>同儕相處</asp:ListItem>
            <asp:ListItem>親子關係</asp:ListItem>
            <asp:ListItem>異性關係</asp:ListItem>
        </asp:RadioButtonList>
        <br />
               <asp:Label ID="Label4" runat="server" Text="4.目前孩子學科部分表現最差強人意的科目是："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList9" runat="server">
             <asp:ListItem>國文</asp:ListItem>
            <asp:ListItem>英文</asp:ListItem>
            <asp:ListItem>數學</asp:ListItem>
            <asp:ListItem>自然</asp:ListItem>
            <asp:ListItem>社會</asp:ListItem>
        </asp:RadioButtonList>
        <br />
                       <asp:Label ID="Label5" runat="server" Text="5.承(4)，學習效果不佳主因為何："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList5" runat="server">
             <asp:ListItem>沒有學習意願</asp:ListItem>
            <asp:ListItem>理解力欠佳</asp:ListItem>
            <asp:ListItem>缺乏適當引導</asp:ListItem>
            <asp:ListItem>基礎薄弱</asp:ListItem>
            <asp:ListItem>沒有充分時間複習</asp:ListItem>
        </asp:RadioButtonList>
        <br />
              <asp:Label ID="Label6" runat="server" Text="6.您覺得孩子國小與國中的課業表現關聯性為："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList6" runat="server">
             <asp:ListItem>非常有關聯</asp:ListItem>
            <asp:ListItem>有關聯</asp:ListItem>
            <asp:ListItem>稍有關聯</asp:ListItem>
            <asp:ListItem>沒有關聯</asp:ListItem>
        </asp:RadioButtonList>
        <br />
         <asp:Label ID="Label7" runat="server" Text="7.您覺得孩子目前最需要協助的部分是："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList7" runat="server">
             <asp:ListItem>目標設定</asp:ListItem>
            <asp:ListItem>時間管理</asp:ListItem>
            <asp:ListItem>讀書方法</asp:ListItem>
            <asp:ListItem>人際關係</asp:ListItem>
            <asp:ListItem>壓力、情緒管理</asp:ListItem>
        </asp:RadioButtonList>
        <br />
         <asp:Label ID="Label13" runat="server" Text="8.未來孩子的升學方向為："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList12" runat="server">
             <asp:ListItem>高中</asp:ListItem>
            <asp:ListItem>高職</asp:ListItem>
            <asp:ListItem>五專</asp:ListItem>
            <asp:ListItem>出國念書</asp:ListItem>
           <asp:ListItem>尚未決定</asp:ListItem>
        </asp:RadioButtonList>
        <br />
                 <asp:Label ID="Label8" runat="server" Text="9.您對於現行的十二年國教升學制度，瞭解程度為："></asp:Label>
         <br />
       <asp:RadioButtonList ID="RadioButtonList8" runat="server">
             <asp:ListItem>完全瞭解</asp:ListItem>
            <asp:ListItem>大概瞭解</asp:ListItem>
            <asp:ListItem>稍有概念</asp:ListItem>
            <asp:ListItem>完全不瞭解</asp:ListItem>
        </asp:RadioButtonList>
        <br />
                      <asp:Label ID="Label9" runat="server" Text="10.您目前希望得到哪方面的相關資訊：(可複選)"></asp:Label>
         <br />
       <asp:CheckBoxList ID="CheckBoxList2" runat="server">
             <asp:ListItem>免試入學制度</asp:ListItem>
            <asp:ListItem>國中學科課程</asp:ListItem>
            <asp:ListItem>選填志願建議</asp:ListItem>
            <asp:ListItem>各種檢定考試 </asp:ListItem>
        </asp:CheckBoxList>
        <br />
                    <asp:Label ID="Label10" runat="server" Text="11.如果孩子未來有學科課程需求，請問您選擇補習班時最注重的是：(請排序前五名，填入數字1~5)"></asp:Label>
         <br />
            <asp:DropDownList ID="DropDownList1" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;離學校近
                 
        <br />
                <asp:DropDownList ID="DropDownList2" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;教育理念<br />
                <asp:DropDownList ID="DropDownList3" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;管理完善<br />
                <asp:DropDownList ID="DropDownList4" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;親友口碑
                 
        <br />
                <asp:DropDownList ID="DropDownList5" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;授課師資
                 
        <br />
                <asp:DropDownList ID="DropDownList6" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;班級人數
        <br />
            <asp:DropDownList ID="DropDownList7" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;升學率
        <br />
            <asp:DropDownList ID="DropDownList8" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;學費優惠  <br />
            <asp:DropDownList ID="DropDownList9" runat="server" style="width:50px">
            <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;硬體設備

        <br />
           <br />
           <asp:Label ID="Label12" runat="server" Text="12.請問您願意收到我們最新活動及課程優惠資訊嗎？(以簡訊方式)"></asp:Label>
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
