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
    public partial class StaffInterface : System.Web.UI.Page
    {
        Logic.Staff staff = new Logic.Staff();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StaffID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                LbUsernameVal.Text = Session["StaffID"].ToString();
                staff.StaffID = Session["StaffID"].ToString();
                ds=staff.SelectStaffByStaffID();
                LbCustomerIDVal.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                LbAddressVal.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                LbPhoneVal.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
                if (!IsPostBack)
                {
                    Tab1.CssClass = "Clicked";
                    MainView.ActiveViewIndex = 0;
                }
            }
            
        }
        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordSales.aspx");
            /*Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;*/
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }

        protected void Tab4_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Clicked";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 3;
        }

        protected void Tab5_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Clicked";
            MainView.ActiveViewIndex = 4;
        }
    }
}