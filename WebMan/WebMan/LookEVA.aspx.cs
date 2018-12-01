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
    public partial class LookEVA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SelectBind();
            }
        }
        protected void SelectButton_Click(object sender, EventArgs e)
        {
            SelectEVA();
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            UpdateEVA();
            UpdateGoClass();
        }


        public void SelectBind()
        {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();

            string sql = "select * from evaluation";
            MySqlCommand cmd = new MySqlCommand(sql,con);
            DataSet Ds = new DataSet();
            MySqlDataAdapter msda = new MySqlDataAdapter(sql, con);
            msda.Fill(Ds, "evaluation");
            GridView4.DataSource = Ds;
            GridView4.DataKeyNames = new string[] { "id" };
            GridView4.DataBind();

            con.Close();
        }

        public void SelectEVA()
        {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();
            string sql = "select eva from evaluation where id='"+StudentID.Text+"'";
            MySqlCommand cmd = new MySqlCommand(sql, con);
            MySqlDataReader mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                Eva.Text = mdr[0].ToString();
            }
            else
            {
                Response.Write("查询失败");
            }
            mdr.Close();
            mdr.Dispose();


            con.Close();
        }

        public void UpdateEVA()
        {
            try
            {
                if ((UpdateEvaText.Text == "") || (InStudentID.Text == ""))
                {
                    Response.Write("查询和添加信息不能为空");

                }
                else
                { 
                    MySqlConnection con = Mdb.CreateConnection();
                    con.Open();
                    //"insert into evaluation(eva) values('" + UpdateEvaText.Text + "')"
                    string sql = "update evaluation set eva='"+UpdateEvaText.Text+"'where id='"+InStudentID.Text+"'";
                    MySqlCommand cmd = new MySqlCommand(sql, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    SelectBind();
                    Response.Write("添加成功");
                }
            }
            catch(Exception ex) {
                Response.Write("添加失败"+ex);

            }

        }

        public void UpdateGoClass() {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();
            string sql = "update stulist set goClass='已上课' where id='"+ InStudentID.Text + "'";
            MySqlCommand cmd = new MySqlCommand(sql,con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}