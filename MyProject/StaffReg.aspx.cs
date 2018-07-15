using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class StaffReg : System.Web.UI.Page
    {
        Logic.Connections con = new Logic.Connections();
        Logic.Staff staff = new Logic.Staff();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if ( dropDwnAccType.Text==""||txtName.Text == "" || txtStaffID.Text == "" || txtEmail.Text == "" || txtPassword.Text == "" || txtPhone.Text == "" || txtAddress.Text == "")
            {
                LbStatus.Text = "Please fill all the boxes!";
            }
            else
            {
                staff.AccType = dropDwnAccType.Text.Trim();
                staff.StaffID = txtStaffID.Text.Trim();
                staff.Name = txtName.Text.Trim();
                staff.Email = txtEmail.Text.Trim();
                staff.Phone = txtPhone.Text.Trim();
                staff.Address = txtAddress.Text.Trim();
                staff.Password = txtPassword.Text.Trim();
                string retype = txtRetypePassword.Text.Trim();
                if (staff.Password == retype)
                {
                    LbStatus.Text = staff.Insert();
                }
                else
                {
                    LbStatus.Text = "Password does not match";
                }
            }
        }
    }
}