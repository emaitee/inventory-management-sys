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
    
    public partial class AdminLogin : System.Web.UI.Page
    {
        Logic.Customers customers = new Logic.Customers();
        Logic.Staff staff = new Logic.Staff();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (dropDwnAccountType.Text.Trim() == "")
            {
                LbStatus.Text = "Please choose your account type";
            }
            else if (dropDwnAccountType.Text.Trim() == "Administrator")
            {
                staff.AccType = dropDwnAccountType.Text.Trim();
                staff.StaffID = txtUsername.Text.Trim();
                staff.Password = txtPassword.Text.Trim();
                if (staff.SelectStaf().Tables[0].Rows.Count == 1)
                {
                    Session["StaffID"] = staff.StaffID;
                    Response.Redirect("AdminInterface.aspx");
                }
                else
                {
                    LbStatus.Text = "Incorrect Username or Password";
                    txtPassword.Text = "";
                    txtUsername.Text = "";
                }
            }
            else if (dropDwnAccountType.Text.Trim() == "Sales Representative")
            {
                staff.AccType = dropDwnAccountType.Text.Trim();
                staff.StaffID = txtUsername.Text.Trim();
                staff.Password = txtPassword.Text.Trim();
                if (staff.SelectStaf().Tables[0].Rows.Count == 1)
                {
                    Session["StaffID"] = staff.StaffID;
                    Response.Redirect("StaffInterface.aspx");
                }
                else
                {
                    LbStatus.Text = "Incorrect Username or Password";
                    txtPassword.Text = "";
                    txtUsername.Text = "";
                }
            }
            else if (dropDwnAccountType.Text.Trim() == "Customer")
            {
                customers.Username = txtUsername.Text.Trim();
                customers.Password = txtPassword.Text.Trim();
                if (customers.SelectCustomer().Tables[0].Rows.Count == 1)
                {
                    Session["Username"] = customers.Username;
                    Response.Redirect("CustomerInterface.aspx");
                }
                else
                {
                    LbStatus.Text = "Incorrect Username or Password";
                    txtPassword.Text = "";
                    txtUsername.Text = "";
                }
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PswdRecovery.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerReg.aspx");
        }
    }
}