using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MyProject.Logic
{
    public class Customers
    {
        Logic.Connections con = new Logic.Connections();

        //Properties
        public string Acctype
        { get; set; }
        public string Username
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
            string sql = "Insert into Customers Values ('" + Username + "', '" + Name + "', '" + Email + "', '" + Phone + "', '" + Address + "','" + Password + "')";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Record Submitted Successfully. <a href='Login.aspx'>Login here</a>";
        }
        public DataSet SelectCustomer()
        {
            string sql = "Select * from Customers where Username='" + Username + "' and Password='" + Password + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet SelectCustomerByUsername()
        {
            string sql = "Select * from Customers where Username='" + Username + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public string ChangePassword()
        {
            string sql = "Update Customer set Password='" + Password + "' where Email='" + Email + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            return "Password changed successfully. <a href='Login.aspx'>Login</a>";

        }
    }
}