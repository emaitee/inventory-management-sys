<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="StaffReg.aspx.cs" Inherits="MyProject.StaffReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article class="row">
            <div class="col-md-6 col-md-push-3 well-lg alert-success" id="regForm">
             <h3 class="text-info"><span class="glyphicon glyphicon-plus-sign"></span> Register Staff</h3><hr />
            
            <div class="form-group">
            <asp:Label ID="LbAccType" runat="server" AssociatedControlID="dropDwnAccType" Text="Account Type"></asp:Label>
            <asp:DropDownList ID="dropDwnAccType" runat="server">
                <asp:ListItem Value="Administrator"></asp:ListItem>
                <asp:ListItem Value="Sales Representative"></asp:ListItem>
                </asp:DropDownList>    
          </div>
          <div class="form-group">
            <asp:Label ID="LbStaffID" runat="server" AssociatedControlID="txtStaffID" Text="StaffID"></asp:Label>
            <asp:TextBox ID="txtStaffID" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbName" runat="server" AssociatedControlID="txtName" Text="Full Name"></asp:Label>
            <asp:TextBox ID="txtName" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbEmail" runat="server" AssociatedControlID="txtEmail" Text="Email Address"></asp:Label>
            <asp:TextBox ID="txtEmail" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbPhone" runat="server" AssociatedControlID="txtPhone" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="txtPhone" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbAddress" runat="server" AssociatedControlID="txtAddress" Text="Contact Address"></asp:Label>
            <asp:TextBox ID="txtAddress" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbPassword" runat="server" AssociatedControlID="txtPassword" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" type="password" class="form-control" placeholder="" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbRetypePswd" runat="server" AssociatedControlID="txtRetypePassword" Text="Retype Password"></asp:Label>
            <asp:TextBox ID="txtRetypePassword" type="password" class="form-control" placeholder="" runat="server" Width="400px"></asp:TextBox>
          </div>
          <asp:Button ID="btnRegister" runat="server" class="btn btn-primary" Text="Register" onclick="btnRegister_Click" 
                    ></asp:Button><br />

                <asp:Button ID="LbStatus" runat="server" Text=""></asp:Button>
          </div>
        </article>
</asp:Content>
