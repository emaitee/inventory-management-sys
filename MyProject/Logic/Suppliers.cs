using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MyProject.Logic
{
    public class Suppliers
    {
        Logic.Connections con = new Logic.Connections();

        //Properties
        public string Name
        {
            get;
            set;
        }
        public string Email
        {
            get;
            set;
        }
        public string Phone
        {
            get;
            set;
        }
        public string Address
        {
            get;
            set;
        }

        //Methods
        public string Insert()
        {
            string sql = "Insert into Suppliers Values ('" + Name + "' ,'" + Email + "', '" + Phone + "', '" + Address + "')";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Record Submitted Successfully";
        }
        /*public DataSet SelectStaf()
        {
            string sql = "Select * from Staff where StaffID='" + StaffID + "' and Password='" + Password + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }*/
    }
}