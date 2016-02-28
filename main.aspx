<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="mingzi" HeaderText="家長" SortExpression="mingzi" />
                <asp:BoundField DataField="shouji" HeaderText="手機" SortExpression="shouji" />
                <asp:BoundField DataField="xingbie" HeaderText="性別" SortExpression="xingbie" />
                <asp:BoundField DataField="guoxiao" HeaderText="國小" SortExpression="guoxiao" />
                <asp:BoundField DataField="nianji" HeaderText="年級" SortExpression="nianji" />
                <asp:BoundField DataField="xingbie1" HeaderText="學生" SortExpression="xingbie1" />
                <asp:TemplateField ShowHeader="true" HeaderText="問卷" >
                    <ItemTemplate>
                    <asp:Button ID="Button1" runat="server"  CommandName="cha" CommandArgument='<%#Eval("id")%>' Text="查看"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
              
                <asp:CommandField ShowDeleteButton="True"/>
                
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dsn %>" SelectCommand="SELECT * FROM [diaocha]" DeleteCommand="DELETE FROM [diaocha] WHERE [id] = @id" InsertCommand="INSERT INTO [diaocha] ([mingzi], [shouji], [xingbie], [guoxiao], [nianji], [xingbie1], [wenjuan]) VALUES (@mingzi, @shouji, @xingbie, @guoxiao, @nianji, @xingbie1, @wenjuan)" UpdateCommand="UPDATE [diaocha] SET [mingzi] = @mingzi, [shouji] = @shouji, [xingbie] = @xingbie, [guoxiao] = @guoxiao, [nianji] = @nianji, [xingbie1] = @xingbie1, [wenjuan] = @wenjuan WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="mingzi" Type="String" />
                <asp:Parameter Name="shouji" Type="String" />
                <asp:Parameter Name="xingbie" Type="String" />
                <asp:Parameter Name="guoxiao" Type="String" />
                <asp:Parameter Name="nianji" Type="String" />
                <asp:Parameter Name="xingbie1" Type="String" />
                <asp:Parameter Name="wenjuan" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="mingzi" Type="String" />
                <asp:Parameter Name="shouji" Type="String" />
                <asp:Parameter Name="xingbie" Type="String" />
                <asp:Parameter Name="guoxiao" Type="String" />
                <asp:Parameter Name="nianji" Type="String" />
                <asp:Parameter Name="xingbie1" Type="String" />
                <asp:Parameter Name="wenjuan" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
