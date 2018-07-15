using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class CustomerReg : System.Web.UI.Page
    {
        Logic.Connections con = new Logic.Connections();
        Logic.Customers customers = new Logic.Customers();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if(txtName.Text==""||txtUsername.Text==""||txtEmail.Text==""||txtPassword.Text==""||txtPhone.Text==""||txtAddress.Text=="")
            {
                LbStatus.Text = "Please fill all the boxes!";
            }
            else
            {
                customers.Name = txtName.Text.Trim();
                customers.Username = txtUsername.Text.Trim();
                customers.Email = txtEmail.Text.Trim();
                customers.Phone = txtPhone.Text.Trim();
                customers.Address = txtAddress.Text.Trim();
                customers.Password = txtPassword.Text.Trim();
                string retype = txtRetypePassword.Text.Trim();
                if (customers.Password == retype)
                {
                    LbStatus.Text = customers.Insert();
                }
                else
                {
                    LbStatus.Text="Password does not match the Account details";
                }
                txtAddress.Text = "";
                txtEmail.Text = "";
                txtName.Text = "";
                txtPassword.Text = "";
                txtPhone.Text = "";
                txtRetypePassword.Text = "";
                txtUsername.Text = "";
            }
    }
    }
}