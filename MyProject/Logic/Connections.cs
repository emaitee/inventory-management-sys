using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MyProject.Logic
{
    public class Connections
    {
        SqlConnection sqlCon = new SqlConnection();
        string conpath = Properties.Settings.Default.Constring;

        public SqlConnection Open()
        {
            if (sqlCon.State == ConnectionState.Closed)
            {
                sqlCon.ConnectionString = conpath;
                sqlCon.Open();
            }
            return sqlCon;
        }

        public void Close()
        {
            if (sqlCon.State == ConnectionState.Open)
            {
                sqlCon.Close();
            }
        }
    }
}