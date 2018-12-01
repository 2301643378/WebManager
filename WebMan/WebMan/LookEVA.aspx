<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LookEVA.aspx.cs" Inherits="WebMan.LookEVA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form4" runat="server">
        <div>
            <asp:GridView ID="GridView4" runat="server"></asp:GridView>
        </div>
            查看评价信息<asp:TextBox ID="Eva" runat="server" Width="150px" Height="150px"></asp:TextBox><br />
            查看学员ID<asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
            <asp:Button ID="SelectButton" runat="server" OnClick="SelectButton_Click" Text="查询" /><br />
            添加评价信息<asp:TextBox ID="UpdateEvaText" runat="server" Width="150px" Height="150px"></asp:TextBox><br />
            添加学员ID  <asp:TextBox ID="InStudentID" runat="server"></asp:TextBox>
            <asp:Button ID="UpdateStID" runat="server" OnClick="UpdateButton_Click" Text="添加" />
    </form>
    
    <a href="WebList.aspx">添加学生信息</a>

</body>
</html>
