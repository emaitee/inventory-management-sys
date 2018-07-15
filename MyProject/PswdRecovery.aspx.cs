using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class PswdRecovery : System.Web.UI.Page
    {
        Logic.Connections con = new Logic.Connections();
        Logic.Customers customers=new Logic.Customers();
        Logic.Staff staff=new Logic.Staff();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRecover_Click(object sender, EventArgs e)
        {
            customers.Email=txtEmail.Text.Trim();
            customers.Password=txtNewPassword.Text.Trim();
            string retype=txtRetypeNwPassword.Text.Trim();
            if(customers.SelectCustomer().Tables[0].Rows.Count==1)
            {
                if (customers.Password==retype){
                LbStatus.Text=customers.ChangePassword();
                    txtEmail.Text="";
                    txtNewPassword.Text="";
                    txtRetypeNwPassword.Text="";
                }
                else
                {
                    LbStatus.Text="Please enter a valid password";
                }
            }
            else
            {
                LbStatus.Text = "Record not found!";
            }

        }
    }
}