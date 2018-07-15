using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MyProject.Logic
{
    public class Stock
    {
        Logic.Connections con = new Logic.Connections();

        //Properties
        public string Name
        {
            get;
            set;
        }
        public string Category
        {
            get;
            set;
        }
        public string Quantity
        {
            get;
            set;
        }
        public string Price
        {
            get;
            set;
        }

        //Methods
        public string Insert()
        {
            string sql = "Insert into Stock Values ('" + Name + "', '" + Category + "', '" + Quantity + "', '" + Price + "')";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Record Submitted Successfully";
        }
        public DataSet SelectUser()
        {
            string sql = "Select * from Stock where Name='" + Name + "' and Category='" + Category + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public string DeleteItem()
        {
            string sql = "Delete from Staff Name Item='" + Name + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Record deleted successfully";
        }
    }
}