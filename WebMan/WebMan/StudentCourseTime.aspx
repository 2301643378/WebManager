<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentCourseTime.aspx.cs" Inherits="WebMan.StudentCourseTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form6" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
        要修改的学生ID<asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
        <asp:Button ID="updateTimeButton" runat="server" OnClick="UpdateTimeButton_Click" Text="修改时间" />

    </form>
</body>
</html>
