<%@ Page Title="" Language="C#" MasterPageFile="~/Primary.Master" AutoEventWireup="true" CodeBehind="CustomerInterface.aspx.cs" Inherits="MyProject.CustomerInterface" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<article class="row">
    <div class="col-md-6 col-md-push-3 well-lg alert-info" id="regForm">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
            <asp:Label ID="LbUsername" runat="server" Text=""></asp:Label><br />
            
            <br />
        </div>
        <div>
            <asp:Label ID="LbCustomerName" runat="server" Text="Name:"></asp:Label>
            <asp:Label ID="LbCustomerNameVal" runat="server" Text=""></asp:Label>
        </div><br />
        <div>
            <asp:Label ID="LbAddress" runat="server" Text="Address:"></asp:Label>
            <asp:Label ID="LbAddressVal" runat="server" Text=""></asp:Label>
        </div>  <br />
        <div>
            <asp:Label ID="LbPhone" runat="server" Text="Phone Number:"></asp:Label>
            <asp:Label ID="LbPhoneVal" runat="server" Text=""></asp:Label>
        </div><br />
        <hr />
        <div class="alert-success">
            <h4 class="text-info"><span class="glyphicon"></span> Order Now</h4><hr />
            <div class="form-group">
            <asp:Label ID="LbItem" runat="server" AssociatedControlID="DropDownList1" Text="Item"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" 
                  DataSourceID="SqlDataSource12" DataTextField="Name" DataValueField="Name">
              </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
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
            <asp:LinkButton ID="lnkbtnPricePerUnit" runat="server" 
                  onclick="lnkbtnPricePerUnit_Click">Click here to view the Total Price</asp:LinkButton><br />
            <asp:Label ID="LbPriceVal" runat="server" Text=""></asp:Label>
        </div><br />
        <asp:Button ID="LbSubmit" runat="server" Text="Submit" class="btn btn-success" 
                onclick="LbSubmit_Click" ></asp:Button><br />
            <asp:Label ID="LbStatus" runat="server" Text=""></asp:Label>
        </div><br />
        <asp:LinkButton ID="lnkbtnCLR" runat="server" onclick="lnkbtnCLR_Click">Clear Fields</asp:LinkButton>
    </div>
</article>
</asp:Content>
