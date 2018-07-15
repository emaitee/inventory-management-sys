using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class SalesRecord : System.Web.UI.Page
    {
        Logic.RecordSales recordSales = new Logic.RecordSales();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StaffID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "" || drpDwnCat.Text == "" || txtQtty.Text == "" || txtPrice.Text == "")
            {
                LbStatus.Text = "All the fields must be filled";
            }
            else 
            {
                recordSales.ItemName = DropDownList1.Text.Trim();
                recordSales.ItemCat = drpDwnCat.Text.Trim();
                recordSales.QuantitySold = txtQtty.Text.Trim();
                recordSales.SellingPrice = txtPrice.Text.Trim();
                DateTime now = DateTime.Now;
                recordSales.DateAndTime = now.ToString();
                LbStatus.Text = recordSales.Insert();
                txtQtty.Text = "";
                txtPrice.Text = "";
            }
            
        }
    }
}