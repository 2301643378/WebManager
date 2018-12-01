<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="WebMan.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
    <title></title>
</head>
<body>
    管理员
    <form id="form1" runat="server">
       <div>
       <asp:Label ID="Label1" runat="server" Text="用户"></asp:Label>
       <asp:TextBox ID="labuser" runat="server"></asp:TextBox><br />
       <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
       <asp:TextBox ID="labpwd" runat="server" TextMode="Password" AutoCompleteType="BusinessZipCode" Width="145px"></asp:TextBox><br />
       <asp:Button ID="allow" runat="server" OnClick="allow_Click" Text="确定" /> 
       <asp:Button ID="abov" runat="server" Text="注册" OnClick="abov_Click" /><br />
       <br />
       <asp:Label ID="Label3" runat="server"></asp:Label><br />  
       </div>
    </form>

    <a href="StLogin.aspx">学生登录</a>
    
    <%--<a href="WebList.aspx">查看学生的评价信息</a>--%>
</body>
</html>
