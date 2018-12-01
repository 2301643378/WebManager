using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace WebMan
{
    public partial class StLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        //登录
        protected void allow_Click(object sender, EventArgs e)
        {
            if ((SlabUser.Text == "") || (SlabPwd.Text == ""))
            {
                SLabel3.Text = "用户名和密码不能为空";
            }
            else
            {
                MySqlConnection con = Mdb.CreateConnection();
                con.Open();
                string sql = "select Spassword from slogin where Susername='"+SlabUser.Text+"'";
                MySqlCommand mscd = new MySqlCommand(sql,con);
                DataSet ds = new DataSet();
                MySqlDataAdapter msda = new MySqlDataAdapter(sql,con);
                msda.Fill(ds,"mytab");
                try
                {
                    if (SlabPwd.Text == ds.Tables[0].Rows[0].ItemArray[0].ToString().Trim())
                    {
                        string cur = SlabUser.Text;
                        SLabel3.Text = "登录成功";
                    }
                    else
                    {
                        SLabel3.Text = "用户名或密码错误";
                    }
                }
                catch {
                    SLabel3.Text = "用户名不存在";
                }
                con.Close();
            }
        }

        //注册
        protected void abov_Click(object sender, EventArgs e)
        {
            if ((SlabUser.Text == "") || (SlabPwd.Text == ""))
            {
                SLabel3.Text = "用户名为或密码不能为空";
            }
            else
            {
                try
                {

                    MySqlConnection con = Mdb.CreateConnection();
                    con.Open();
                    string strsql = "insert into slogin values('" + SlabUser.Text + "','" + SlabPwd.Text + "')";
                    MySqlCommand cmd = new MySqlCommand(strsql, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    SlabUser.Text = "";
                    SlabPwd.Text = "";
                    SLabel3.Text = "注册成功";

                }
                catch
                {
                    SLabel3.Text = "用户名已存在";
                }
            }
        }
    }
}