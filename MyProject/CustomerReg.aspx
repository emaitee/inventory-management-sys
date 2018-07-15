<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CustomerReg.aspx.cs" Inherits="MyProject.CustomerReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<article class="row">
            <div class="col-md-6 col-md-push-3 well-lg alert-success" id="regForm">
             <h3 class="text-info"><span class="glyphicon glyphicon-plus-sign"></span>Customer Registeration</h3><hr />
          <div class="form-group">
            <asp:Label ID="LbName" runat="server" AssociatedControlID="txtName" Text="Full Name"></asp:Label>
            <asp:TextBox ID="txtName" placeholder="Enter your full name here" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbUsername" runat="server" AssociatedControlID="txtUsername" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUsername" placeholder="Please choose a username" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbEmail" runat="server" AssociatedControlID="txtEmail" Text="Email Address"></asp:Label>
            <asp:TextBox ID="txtEmail" placeholder="Enter your email here" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbPhone" runat="server" AssociatedControlID="txtPhone" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="txtPhone" placeholder="Enter your phone number here" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbAddress" runat="server" AssociatedControlID="txtAddress" Text="Contact Address"></asp:Label>
            <asp:TextBox ID="txtAddress" placeholder="Enter your address here" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbPassword" runat="server" AssociatedControlID="txtPassword" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" type="password" class="form-control" placeholder="Enter your password here" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbRetypePswd" runat="server" AssociatedControlID="txtRetypePassword" Text="Retype Password"></asp:Label>
            <asp:TextBox ID="txtRetypePassword" type="password" class="form-control" placeholder="Re-type your password here" runat="server" Width="400px"></asp:TextBox>
          </div>
              <asp:Button ID="btnRegister" runat="server" class="btn btn-primary" 
                    Text="Register" onclick="btnRegister_Click" 
                        ></asp:Button><br />
              <asp:Label ID="LbStatus" runat="server" Text=""></asp:Label>
          </div>
        </article>
</asp:Content>
