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
   
    public partial class WebList : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }



        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            AddStudent();
            AddEVA();
            AddCourseTime();

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind();
        }

        //绑定信息显示
        public void Bind()
        {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();
            //stulist(id,StudentName,StudentSex,StudentAge,CourseTime,CourseTeacher,CourseText)
            string sql = "select * from stulist";
            MySqlCommand mscmd = new MySqlCommand(sql, con);
            DataSet Ds = new DataSet();
            MySqlDataAdapter msda = new MySqlDataAdapter(sql, con);
            msda.Fill(Ds, "stulist");
            GridView1.DataSource = Ds;
            GridView1.DataKeyNames = new string[] { "id" };
            GridView1.DataBind();
           
            con.Close();
        }

        //添加学生信息
        public void AddStudent()
        {
            try
            {
                MySqlConnection con = Mdb.CreateConnection();
                con.Open();
                string strsql = "insert into stulist(StudentName,StudentSex,StudentAge,CourseTime,CourseTeacher,CourseText,goClass) values('" + StName.Text.Trim() + "','" + Sex.Value + "','" + StAge.Text.Trim() + "','" + CorTime.Text.Trim() + "','" + CorTeacher.Text.Trim() + "','" + CorText.Text.Trim() + "','"+Tc.Value + "')";

                MySqlCommand cmd = new MySqlCommand(strsql, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Bind();
                Response.Write("添加成功！");
            }
            catch (Exception ex)
            {
                Response.Write("添加失败！" + ex);
            }
        }
        //添加评价
        public void AddEVA()
        {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();
            string sql = "insert into evaluation(eva) value('')";
            MySqlCommand mscd = new MySqlCommand(sql, con);
            mscd.ExecuteNonQuery();
            con.Close();
        }
        public void AddCourseTime()
        {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();
            string sql = "insert into stutotal(StTime) value(42)";
            MySqlCommand mscd = new MySqlCommand(sql, con);
            mscd.ExecuteNonQuery();
            con.Close();
        }


        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }

    }
}