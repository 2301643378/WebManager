<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebList.aspx.cs" Inherits="WebMan.WebList"  EnableEventValidation="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
    <title>网页列表</title>
</head>
<body> 
      <form id="from3" runat="server">
            <div>  
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>

                   学生姓名<asp:TextBox ID="StName" runat="server" Width="150px" ></asp:TextBox><br />
                 
                   <%--学生性别<asp:TextBox ID="StSex" runat="server" Width="150px" ></asp:TextBox>--%>
                   学生性别
                   <select id="Sex" runat="server" width="150px">
                       <option value="男" >男</option>
                       <option value="女"></option>                                  
                   </select><br />
                   学生年龄<asp:TextBox ID="StAge" runat="server" Width="150px" ></asp:TextBox><br />
                   
                   上课时间<asp:TextBox ID="CorTime" runat="server" Width="150px" type="date" ></asp:TextBox><br />
                  
                   上课老师<asp:TextBox ID="CorTeacher" runat="server" Width="150px"  ></asp:TextBox><br />
                  
                   上课内容<asp:TextBox ID="CorText" runat="server" Width="150px" ></asp:TextBox><br />
                   
                   是否上课
                    <select id="Tc" runat="server" width="150px">
                       <option value="未上课" >未上课</option>
                       <option value="已上课"></option>                                           
                   </select>
                   <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="添加"/><br />      
      </form>
      <a href="LookEVA.aspx">查看学生评价</a> 
      <a href="StudentCourseTime.aspx">学生剩余课时查看</a>
      <a href="TeacehrCourseTime.aspx">老师上课累计时间查看</a>
</body>
</html>
