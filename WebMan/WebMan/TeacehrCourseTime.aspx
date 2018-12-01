<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacehrCourseTime.aspx.cs" Inherits="WebMan.TeacehrCourseTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form5" runat="server">
        <div>   
           <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>

        要修改的老师ID<asp:TextBox ID="TeaID" runat="server"></asp:TextBox>
        <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="修改" />
    </form>
</body>
</html>
