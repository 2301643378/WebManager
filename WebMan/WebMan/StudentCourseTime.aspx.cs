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
    public partial class StudentCourseTime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }

        protected void UpdateTimeButton_Click(object sender, EventArgs e)
        {
              
              UpTime();

        }

        public void UpTime()
        {
            try
            {
                MySqlConnection con = Mdb.CreateConnection();
                con.Open();
                string sql = "update stutotal set StTime=StTime-2 where id='" + StudentID.Text + "'";
                MySqlCommand cmd = new MySqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Bind();
            }
            catch
            {
                Response.Write("修改失败");

            }

        }

        public void Bind()
        {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();
            string sql = "select * from stutotal";
            MySqlCommand mscmd = new MySqlCommand(sql, con);
            DataSet Ds = new DataSet();
            MySqlDataAdapter msda = new MySqlDataAdapter(sql, con);
            msda.Fill(Ds, "stutotal");
            GridView1.DataSource = Ds;
            GridView1.DataKeyNames = new string[] { "id" };
            GridView1.DataBind();

            con.Close();
        }
    }
}