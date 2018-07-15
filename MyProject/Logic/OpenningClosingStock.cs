using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MyProject.Logic
{
    public class OpenningClosingStock
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
        public string QuantityInStock
        {
            get;
            set;
        }
        public string PricePerUnit
        {
            get;
            set;
        }
        public string TotalPrice
        {
            get;
            set;
        }

        //Methods
        public string Insert()
        {
            string sql = "Insert into Stock Values ('" + Name + "', '" + Category + "', '" + QuantityInStock + "', '" + PricePerUnit + "','"+TotalPrice+"')";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Record Submitted Successfully";
        }
        public DataSet SelectStock()
        {
            string sql = "Select * from Stock where Name='" + Name + "' and Category='" + Category + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}