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
    public partial class TeacehrCourseTime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            InsertDate();
        }


        public void InsertDate()
        {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();
            string sql = "update teatotal set TeaTime=TeaTime+2 where TeaID='"+TeaID.Text+"'";
            MySqlCommand cmd = new MySqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Bind();
        }


        public void Bind()
        {
            MySqlConnection con = Mdb.CreateConnection();
            con.Open();
            string sql = "select * from teatotal";
            MySqlCommand mscmd = new MySqlCommand(sql, con);
            DataSet Ds = new DataSet();
            MySqlDataAdapter msda = new MySqlDataAdapter(sql, con);
            msda.Fill(Ds, "teatotal");
            GridView1.DataSource = Ds;
            GridView1.DataKeyNames = new string[] { "TeaID" };
            GridView1.DataBind();

            con.Close();
        }
    }
}