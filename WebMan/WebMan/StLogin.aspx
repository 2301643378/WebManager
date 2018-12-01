<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StLogin.aspx.cs" Inherits="WebMan.StLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
    <title></title>
</head>
<body>
    学生账号
    <form id="form2" runat="server">
    <div>
    <asp:Label ID="SLabel1" runat="server" Text="用户"></asp:Label>
       <asp:TextBox ID="SlabUser" runat="server"></asp:TextBox><br />
       <asp:Label ID="SLabel2" runat="server" Text="密码"></asp:Label>
       <asp:TextBox ID="SlabPwd" runat="server" TextMode="Password" AutoCompleteType="BusinessZipCode" Width="145px"></asp:TextBox><br />
       <asp:Button ID="Sallow" runat="server" OnClick="allow_Click" Text="登录" /> 
       <asp:Button ID="Sabov" runat="server" Text="注册" OnClick="abov_Click" /><br />
       <br />
       <asp:Label ID="SLabel3" runat="server"></asp:Label><br />  
    </div>
    </form>

     <a href="Login1.aspx">管理员登录</a>
</body>
</html>
