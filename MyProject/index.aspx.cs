using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MyProject
{
    public partial class index : System.Web.UI.Page
    {
        Logic.Connections con = new Logic.Connections();
        Logic.Orders orders = new Logic.Orders();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOrderNow_Click(object sender, EventArgs e)
        {
            orders.Name=txtName.Text.Trim();
            orders.Address=txtAddress.Text.Trim();
            orders.Item = DropDownList1.Text.Trim();
            orders.Quantity=txtQtty.Text.Trim();

            ds = orders.SelectItemByPrice();
            txtPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            int pricePerUnit = Convert.ToInt32(txtPrice.Text);
            int qtty = Convert.ToInt32(txtQtty.Text);
            int totalPrice = pricePerUnit * qtty;
            PriceVal.Text = totalPrice.ToString();

            orders.PricePerUnit = txtPrice.Text;
            orders.TotalPrice = PriceVal.Text;
            LbOrderStatus.Text = orders.Insert();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnViewPrice_Click(object sender, EventArgs e)
        {
            orders.Item = DropDownList1.Text.Trim();
            ds = orders.SelectItemByPrice();
            txtPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            int pricePerUnit = Convert.ToInt32(txtPrice.Text);
            int qtty = Convert.ToInt32(txtQtty.Text);
            int totalPrice = pricePerUnit * qtty;
            PriceVal.Text = totalPrice.ToString();
        }

        protected void btnViewIntentory_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockList.aspx");
        }

        protected void lnkbtnCLR_Click(object sender, EventArgs e)
        {
            txtQtty.Text = "";
            txtPrice.Text = "";
            txtName.Text = "";
            txtAddress.Text = "";
            PriceVal.Text = "";
            LbOrderStatus.Text = "";
        }
    }
}