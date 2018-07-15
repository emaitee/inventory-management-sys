<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyProject.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article class="row">
    <div class="col-md-6 col-md-push-3 well-lg alert-danger" id="loginForm">
        <h3 class="text-info"><span class="glyphicon glyphicon-user"></span> Login</h3><hr />
        <div>
        <asp:Label ID="Label1" runat="server" Text="Login as: "></asp:Label>
            <asp:DropDownList ID="dropDwnAccountType" runat="server">
                <asp:ListItem Value=""></asp:ListItem>
                <asp:ListItem Value="Administrator"></asp:ListItem>
                <asp:ListItem Value="Sales Representative"></asp:ListItem>
                <asp:ListItem Value="Customer"></asp:ListItem>
            </asp:DropDownList><br />
        </div><br />
        <div class="form-group">
            <asp:Label ID="LbID" runat="server" AssociatedControlID="txtUsername" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUsername" placeholder="Enter your Username or StaffID here" class="form-control" runat="server" Width="400px"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="LbPassword" runat="server" AssociatedControlID="txtPassword" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" type="password" class="form-control" placeholder="Enter your password here" runat="server" Width="400px"></asp:TextBox>
        </div>
        <asp:Label ID="LbStatus" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="btnLogin" runat="server" class="btn btn-primary" Text="Login" 
            onclick="btnLogin_Click"></asp:Button><br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >Forgot Password?</asp:LinkButton><br />
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Click here to Create an Account</asp:LinkButton><br />
    </div>
</article>
</asp:Content>
