<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MyProject.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well-lg container">
    <div class="row" >
        <div class="col-md-6">
            <h2 class="" id="welcome" style="">Welcome to Emaitee Stores</h2>
            <div class="row">
            <div class="col-md-2"></div>
                <div class="col-md-8 jumbotron text-center">
                <q id="quote">Save time. Save money.
                What is not to love about
                our Online Inventory</q>
                </div>
            </div>
        </div>
        <div class="col-md-5"><br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login or Register Here" 
                class="btn btn-info btn-lg" onclick="btnLogin_Click" />
            <div id="guest" class="jumbotron bg-warning">
                <p class=" text-center">Proceed as a Guest</p>
                <hr />
                <asp:Button ID="btnViewIntentory" runat="server" 
                    class="btn btn-success btn-block" Text="View Stock List" 
                    onclick="btnViewIntentory_Click" />
                
                <div class="alert-success">
            <h4 class="text-info text-center"><span class="glyphicon"></span>Make Order</h4><hr />
            <div class="form-group">
            <asp:Label ID="LbName" runat="server" AssociatedControlID="txtName" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbAddress" runat="server" AssociatedControlID="txtAddress" Text="Address"></asp:Label>
            <asp:TextBox ID="txtAddress" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbItem" runat="server" AssociatedControlID="DropDownList1" Text="Item"></asp:Label><br />
              <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" 
                  DataSourceID="SqlDataSource14" DataTextField="Name" DataValueField="Name" 
                  >
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource14" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                  SelectCommand="SELECT [Name] FROM [Stock]"></asp:SqlDataSource>
              <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                  SelectCommand="SELECT [Name] FROM [Stock]"></asp:SqlDataSource>
            
          </div>
          <div class="form-group">
            <asp:Label ID="LbQtty" runat="server" AssociatedControlID="txtQtty" Text="Quantity"></asp:Label>
            <asp:TextBox ID="txtQtty" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
          </div>
          <div class="form-group">
              
                        <asp:Label ID="LbPrice" runat="server"  AssociatedControlID="txtPrice" Text="Price"></asp:Label>
                        <asp:TextBox ID="txtPrice" class="form-control" ReadOnly="true" placeholder="" Width="400px" runat="server"></asp:TextBox>
                      </div>
          <div>
              <asp:Button ID="btnViewPrice" runat="server" class="btn btn-default btn-sm" 
                  Text="View Total Price" onclick="btnViewPrice_Click" />
              <asp:Label ID="PriceVal" class="col-md-push-1" runat="server" Text=""></asp:Label><br />
        </div>
                    <asp:Button ID="btnOrderNow" runat="server" Text="Order Now" 
                        class="btn btn-info" onclick="btnOrderNow_Click" />
                    <asp:Label ID="LbOrderStatus" runat="server" Text=""></asp:Label>
        </div><br />
                <asp:LinkButton ID="lnkbtnCLR" runat="server" onclick="lnkbtnCLR_Click">Clear the Fields</asp:LinkButton>
            </div>
        </div>
    </div>
</div>
</asp:Content>
