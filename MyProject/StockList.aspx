<%@ Page Title="" Language="C#" MasterPageFile="~/Primary.Master" AutoEventWireup="true" CodeBehind="StockList.aspx.cs" Inherits="MyProject.StockList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="StockList" class="col-md-5 col-md-push-4 jumbotron" style="margin-top:40px">
        <asp:GridView ID="GridView1" runat="server" 
            HeaderStyle-BackColor="#3AC0F2" CssClass="table-condensed tab-pane" HeaderStyle-ForeColor="White"
                AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSourceStock" Width="386px">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Category" HeaderText="Category" 
                            SortExpression="Category" />
                        <asp:BoundField DataField="QuantityInStock" HeaderText="QuantityInStock" 
                            SortExpression="QuantityInStock" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    </Columns>
        <HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceStock" runat="server" 
            ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
            SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
    </div>
</asp:Content>
