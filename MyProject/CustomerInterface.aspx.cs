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
    public partial class CustomerInterface : System.Web.UI.Page
    {
        Logic.Connections con = new Logic.Connections();
        Logic.Customers customers = new Logic.Customers();
        Logic.Orders orders = new Logic.Orders();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                DataSet ds = new DataSet();
                customers.Username = Session["Username"].ToString();
                ds = customers.SelectCustomerByUsername();
                LbUsername.Text = Session["Username"].ToString();
                LbCustomerNameVal.Text =ds.Tables[0].Rows[0]["Name"].ToString();
                LbAddressVal.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                LbPhoneVal.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
            }
        }

        protected void LbSubmit_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "" || txtQtty.Text == "")
            {
                LbStatus.Text = "Fill the boxes!";
            }
            else
            {
                DataSet ds = new DataSet();
                ds = customers.SelectCustomerByUsername();
                orders.Name = ds.Tables[0].Rows[0]["Name"].ToString();
                orders.Address = ds.Tables[0].Rows[0]["Address"].ToString();
                orders.Item = DropDownList1.Text.Trim();
                orders.Quantity = txtQtty.Text.Trim();
                DataSet dsa = new DataSet();
                dsa = orders.SelectItemByPrice();
                txtPrice.Text = dsa.Tables[0].Rows[0]["Price"].ToString();
                orders.PricePerUnit = txtPrice.Text.Trim();

                int price = Convert.ToInt32(txtPrice.Text);
                int qtty = Convert.ToInt32(txtQtty.Text);
                LbPriceVal.Text=(price * qtty).ToString();
                orders.TotalPrice = LbPriceVal.Text;
                LbStatus.Text = orders.Insert();
            }
            
        }

        protected void lnkbtnPricePerUnit_Click(object sender, EventArgs e)
        {
            orders.Item = DropDownList1.Text;
            DataSet dsa = new DataSet();
            dsa = orders.SelectItemByPrice();
            txtPrice.Text = dsa.Tables[0].Rows[0]["Price"].ToString();
            orders.PricePerUnit = txtPrice.Text.Trim();

            int price = Convert.ToInt32(txtPrice.Text);
            int qtty = Convert.ToInt32(txtQtty.Text);
            LbPriceVal.Text = (price * qtty).ToString();
            orders.TotalPrice = LbPriceVal.Text;
        }

        protected void lnkbtnCLR_Click(object sender, EventArgs e)
        {
            txtPrice.Text = "";
            txtQtty.Text = "";
            LbPriceVal.Text="";
            LbStatus.Text="";
        }
    }
}