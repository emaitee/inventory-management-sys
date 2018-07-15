using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MyProject.Logic
{
    public class Orders
    {
        Logic.Connections con = new Logic.Connections();

        //Properties
        public string Name
        {
            get;
            set;
        }
        public string Address
        {
            get;
            set;
        }
        public string Item
        {
            get;
            set;
        }
        public string Quantity
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
            string sql = "Insert into Orders Values ('" + Name + "', '" + Address + "', '" + Item + "', '" + Quantity + "','"+PricePerUnit+"','"+TotalPrice+"')";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            cmd.ExecuteNonQuery();
            con.Close();
            return "Order Submitted Successfully";
        }
        public DataSet SelectItemByPrice()
        {
            string sql = "Select * from Stock where Name='" + Item + "'";
            SqlCommand cmd = new SqlCommand(sql, con.Open());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}