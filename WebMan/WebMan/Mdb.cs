using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace WebMan
{
    public class Mdb
    {
        public Mdb()
        {
            
        }
        public static MySqlConnection CreateConnection()
        {
            MySqlConnection mySqlConnection = new MySqlConnection("server=localhost;user id=root;password=123456;persistsecurityinfo=True;database=studentdateinformation;SslMode = none");
            return mySqlConnection;
        }

    }
}