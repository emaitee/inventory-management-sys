<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PswdRecovery.aspx.cs" Inherits="MyProject.PswdRecovery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="PswdRec" class="col-md-6 col-md-push-3 well-lg alert-danger">
        <br />

        <div class="form-group">
            <asp:Label ID="LbEmail" runat="server" AssociatedControlID="txtEmail" Text="Email Address"></asp:Label>
            <asp:TextBox ID="txtEmail" placeholder="Enter your email here" class="form-control" runat="server" Width="400px"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="LbNewPassword" runat="server" AssociatedControlID="txtNewPassword" Text="New Password"></asp:Label>
            <asp:TextBox ID="txtNewPassword" type="password" class="form-control" placeholder="Enter your new password here" runat="server" Width="400px"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="LbRetypeNwPswd" runat="server" AssociatedControlID="txtRetypeNwPassword" Text="Retype your new Password"></asp:Label>
            <asp:TextBox ID="txtRetypeNwPassword" type="password" class="form-control" placeholder="Re-type your new password here" runat="server" Width="400px"></asp:TextBox>
        </div>
        <asp:Button ID="btnRecover" runat="server" class="btn btn-primary" 
            Text="Recover" onclick="btnRecover_Click" ></asp:Button>
        <br />
        <asp:Label ID="LbStatus" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
