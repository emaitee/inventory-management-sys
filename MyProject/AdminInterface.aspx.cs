using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class AdminInterface : System.Web.UI.Page
    {
        Logic.Stock stock = new Logic.Stock();
        Logic.Staff staff = new Logic.Staff();
        Logic.Suppliers suppliers = new Logic.Suppliers();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StaffID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else 
            {
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
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            stock.Name = txtStockName.Text.Trim();
            stock.Category = txtCat.Text.Trim();
            stock.Quantity = txtQtty.Text.Trim();
            stock.Price = txtPrice.Text.Trim();
            LbStockStatus.Text = stock.Insert();
            txtStockName.Text = "";
            txtCat.Text = "";
            txtQtty.Text = "";
            txtPrice.Text = "";
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (dropDwnAccType.Text == "" || txtStaffName.Text == "" || txtStaffID.Text == "" || txtStaffEmail.Text == "" || txtStaffPassword.Text == "" || txtStaffPhone.Text == "" || txtStaffAddress.Text == "")
            {
                LbStaffStatus.Text = "Please fill all the boxes and choose an Account type";
            }
            else
            {
                staff.AccType = dropDwnAccType.Text.Trim();
                staff.StaffID = txtStaffID.Text.Trim();
                staff.Name = txtStaffName.Text.Trim();
                staff.Email = txtStaffEmail.Text.Trim();
                staff.Phone = txtStaffPhone.Text.Trim();
                staff.Address = txtStaffAddress.Text.Trim();
                staff.Password = txtStaffPassword.Text.Trim();
                string retype = txtStaffRetypePassword.Text.Trim();
                if (staff.Password == retype)
                {
                    LbStaffStatus.Text = staff.Insert();
                    dropDwnAccType.Text = "";
                    txtStaffAddress.Text = "";
                    txtStaffEmail.Text = "";
                    txtStaffID.Text = "";
                    txtStaffName.Text = "";
                    txtStaffPassword.Text = "";
                    txtStaffPhone.Text = "";
                    txtStaffRetypePassword.Text = "";

                }
                else
                {
                    LbStaffStatus.Text = "Password does not match";
                }
            }
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

        protected void btnAddSupplier_Click(object sender, EventArgs e)
        {
            suppliers.Name = txtSupplierName.Text.Trim();
            suppliers.Email = txtSupplierEmail.Text.Trim();
            suppliers.Phone = txtSupplierPhone.Text.Trim();
            suppliers.Address = txtSupplierAddress.Text.Trim();
            LbSupplierStatus.Text = suppliers.Insert();
            txtSupplierAddress.Text = "";
            txtSupplierEmail.Text = "";
            txtSupplierName.Text = "";
            txtSupplierPhone.Text = "";
        }

        protected void btnDLT_Click(object sender, EventArgs e)
        {
            staff.StaffID = txtDLTStaffID.Text.Trim();
            staff.Email = txtDLTEmail.Text.Trim();
            LbDLTStatus.Text = staff.DeleteStaff();
        }

        protected void btnDeletItem_Click(object sender, EventArgs e)
        {
            stock.Name = txtDLTItemName.Text;
            LbDLTItemStatus.Text = stock.DeleteItem();
        }

    }
}