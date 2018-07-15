using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MyProject.Logic
{
    public class Staff
    {
        Logic.Connections con = new Logic.Connections();

        //Properties
        public string AccType
        {
            get;
            set;
        }
        public string StaffID
        {
            get;
            set;
        }
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
        public string Password
        {
            get;
            set;
        }

        //Methods
        public string Insert()
        {
            string sql = "Insert into Staff Values ('" + AccType + "', '" + StaffID + "', '"+Name+"' ,'" + Email + "', '" + Phone + "', '" + Address + "','" + Password + "')";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Record Submitted Successfully";
        }
        public DataSet SelectStaf()
        {
            string sql = "Select * from Staff where AccType='"+AccType+"' and StaffID='" + StaffID + "' and Password='" + Password + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet SelectStaffByStaffID()
        {
            string sql = "Select * from Staff where StaffID='" + StaffID + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
            
        }
        public string DeleteStaff()
        {
            string sql = "Delete from Staff where StaffID='" + StaffID + "' and Email='" + Email + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Record deleted successfully";
        }
    }
}