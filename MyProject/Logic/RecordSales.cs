using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MyProject.Logic
{
    public class RecordSales
    {
        Logic.Connections con = new Logic.Connections();

        //Properties
        public string ItemName
        {
            get;
            set;
        }
        public string ItemCat
        {
            get;
            set;
        }
        public string SellingPrice
        {
            get;
            set;
        }
        public string QuantitySold
        {
            get;
            set;
        }
        public string DateAndTime
        { 
            get; 
            set;
        }

        //Methods
        public string Insert()
        {
            string sql = "Insert into RecordSales Values ('" + DateAndTime + "','" + ItemName + "', '" + ItemCat + "', '" + SellingPrice + "', '" + QuantitySold + "')";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Record Submitted Successfully";
        }
        public DataSet SelectUser()
        {
            string sql = "Select * from RecordSales where ItemName='" + ItemName + "' and ItemCat='" + ItemCat + "' and SellingPrice= '" + SellingPrice + "' and QuantitySold= '" + QuantitySold + "' and DateAndTime='"+DateAndTime+"'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}