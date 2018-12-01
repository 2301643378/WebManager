using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebMan
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }
     
        protected void allow_Click(object sender, EventArgs e)
        {
            if ((labuser.Text == "") || (labpwd.Text == ""))
            {
                Label3.Text = "用户名与密码不能为空!";

            }
            else
            {
                MySqlConnection con = Mdb.CreateConnection();
                con.Open();
                string strSql = "select password  from login where username='" + labuser.Text + "'";
                MySqlCommand cmd = new MySqlCommand(strSql, con);
                DataSet ds = new DataSet();
                MySqlDataAdapter da = new MySqlDataAdapter(strSql, con);
                da.Fill(ds, "mytable");
                try
                {
                    if (labpwd.Text == ds.Tables[0].Rows[0].ItemArray[0].ToString().Trim())
                    {
                        string curuser = labuser.Text;
                        Label3.Text = "登录成功,欢迎你!";
                        
                        Response.Redirect("WebList.aspx");
                         
                    }
                    else
                    {
                        Label3.Text = "用户名或者密码错误!";
                    }
                }
                catch
                {
                    Label3.Text = "你输入的用户名不存在!";

                }
                con.Close();
            }

        }

        protected void abov_Click(object sender, EventArgs e)
        {
            if ((labuser.Text == "") || (labpwd.Text == ""))
            {
                Label3.Text = "用户名为或密码不能为空";
            }
            else
            {
                try
                {
                    MySqlConnection con = Mdb.CreateConnection();
                    con.Open();
                    string strsql = "insert into login values('" + labuser.Text + "','" + labpwd.Text + "')";
                    MySqlCommand cmd = new MySqlCommand(strsql, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    labuser.Text = "";
                    labpwd.Text = "";
                    Label3.Text = "注册成功!欢迎登录!";
                }
                catch
                {
                    Label3.Text = "用户名已存在!";
                }
            }
        }

    }
}