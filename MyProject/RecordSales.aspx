<%@ Page Title="" Language="C#" MasterPageFile="~/Primary.Master" AutoEventWireup="true" CodeBehind="RecordSales.aspx.cs" Inherits="MyProject.SalesRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article class="">
            <div class="col-md-6 col-md-push-3 well alert-success" id="regForm">
            <div class="col-md-10 ">
             <h4 class="text-info text-center"><span class="glyphicon"></span>Record Sales</h4><hr />
             <div class="col-md-7">
            <div class="form-group">
            <asp:Label ID="LbItemName" runat="server" AssociatedControlID="DropDownList1" Text="ItemName"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" 
                  DataSourceID="SqlDataSource13" DataTextField="Name" DataValueField="Name" 
                  >
              </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                    SelectCommand="SELECT [Name] FROM [Stock]"></asp:SqlDataSource>
          </div>
          <div class="form-group">
            <asp:Label ID="LbItemCat" runat="server" AssociatedControlID="drpDwnCat" Text="Item Category"></asp:Label>
            <asp:DropDownList ID="drpDwnCat" class="form-control" runat="server" 
                  DataSourceID="SqlDataSource7" DataTextField="Category" 
                  DataValueField="Category"></asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                  SelectCommand="SELECT [Category] FROM [Stock]"></asp:SqlDataSource>
          </div>
          <div class="form-group">
            <asp:Label ID="LbPrice" runat="server" AssociatedControlID="txtPrice" Text="Selling Price"></asp:Label>
            <asp:TextBox ID="txtPrice" placeholder="" class="form-control" runat="server" Width="200px"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:Label ID="LbQtty" runat="server" AssociatedControlID="txtQtty" Text="Quantity Sold"></asp:Label>
            <asp:TextBox ID="txtQtty" placeholder="" class="form-control" runat="server" Width="200px"></asp:TextBox>
          </div>
          <asp:Button ID="btnAddItem" runat="server" Text="Add Item" 
                    class="btn btn-success btn-lg" onclick="btnAddItem_Click" ></asp:Button><br />
          <asp:Label ID="LbStatus" runat="server" Text=""></asp:Label>
          </div>
          <div class="col-md-5">

                                                  <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                                      CssClass="table-condensed tab-pane" 
                                                      
                  DataSourceID="SqlDataSourceRecordSales" HeaderStyle-BackColor="#3AC0F2" 
                                                      HeaderStyle-ForeColor="White" 
                  Width="386px">
                                                      <Columns>
                                                          <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                                                              SortExpression="ItemName" />
                                                          <asp:BoundField DataField="ItemCat" HeaderText="ItemCat" 
                                                              SortExpression="ItemCat" />
                                                          <asp:BoundField DataField="SellingPrice" HeaderText="SellingPrice" 
                                                              SortExpression="SellingPrice" />
                                                          <asp:BoundField DataField="QuantitySold" HeaderText="QuantitySold" 
                                                              SortExpression="QuantitySold" />
                                                          <asp:BoundField DataField="DateAndTime" HeaderText="DateAndTime" 
                                                              SortExpression="DateAndTime" />
                                                      </Columns>
                                                      <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                  </asp:GridView>
                                                  <asp:SqlDataSource ID="SqlDataSourceRecordSales" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                  SelectCommand="SELECT [ItemName], [ItemCat], [SellingPrice], [QuantitySold], [DateAndTime] FROM [RecordSales]">
              </asp:SqlDataSource>
          </div>
          </div>
          </div>
        </article>
</asp:Content>
