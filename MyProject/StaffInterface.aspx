<%@ Page Title="" Language="C#" MasterPageFile="~/Primary.Master" AutoEventWireup="true" CodeBehind="StaffInterface.aspx.cs" Inherits="MyProject.StaffInterface" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row"><!--col-md-6 col-md-push-3 well-lg alert-info-->
        <div class="col-md-6 col-md-push-2 well-lg alert-info" id="AdminInterface">
                <div>
                    <asp:Label ID="LbUsernameVal" runat="server" Text=""></asp:Label><br />
                    <br />
                </div>
                <div>
                    <asp:Label ID="LbName" runat="server" Text="Name"></asp:Label>
                    <asp:Label ID="LbCustomerIDVal" runat="server" Text=""></asp:Label>
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
                
                <section >
                <table width="100%" align="center">
                    <tr>
                        <td>
                            <asp:Button ID="Tab1" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab1_Click" runat="server" Text="View Stock List" Width="8.8em" />
                            <asp:Button ID="Tab2" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab2_Click" runat="server" Text="Start Sale" Width="7.4em" />
                            <asp:Button ID="Tab3" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab3_Click" runat="server" Text="View Customers" Width="9.4em" />
                            <asp:Button ID="Tab4" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab4_Click" runat="server" Text="View Suppliers" Width="9em" />
                            <asp:Button ID="Tab5" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab5_Click" runat="server" Text="View Orders" Width="8.2em" />
                            <asp:MultiView ID="MainView" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" 
                                                    CssClass="table-condensed tab-pane" DataSourceID="SqlDataSource2" 
                                                    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Width="386px">
                                                    <Columns>
                                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                        <asp:BoundField DataField="Category" HeaderText="Category" 
                                                            SortExpression="Category" />
                                                        <asp:BoundField DataField="QuantityInStock" HeaderText="QuantityInStock" 
                                                            SortExpression="QuantityInStock" />
                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                    </Columns>
                                                    <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
                                            <br />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                                
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                            <br /><br />
                                                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                                    CssClass="table-condensed tab-pane" DataSourceID="SqlDataSourceCustomers" 
                                                    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Width="386px">
                                                    <Columns>
                                                        <asp:BoundField DataField="Username" HeaderText="Username" 
                                                            SortExpression="Username" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                        <asp:BoundField DataField="Address" HeaderText="Address" 
                                                            SortExpression="Address" />
                                                    </Columns>
                                                    <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSourceCustomers" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                    SelectCommand="SELECT [Username], [Name], [Email], [Phone], [Address] FROM [Customers]">
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                            <br /><br />
                                                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                                                    CssClass="table-condensed tab-pane" DataSourceID="SqlDataSourceSuppliersList" 
                                                    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Width="386px">
                                                        <Columns>
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                                                SortExpression="Address" />
                                                        </Columns>
                                                        <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSourceSuppliersList" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View5" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                            <br /><br />
                                                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                                                    CssClass="table-condensed tab-pane" DataSourceID="SqlDataSourceOrdersList" 
                                                    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Width="386px">
                                                    <Columns>
                                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                        <asp:BoundField DataField="Address" HeaderText="Address" 
                                                            SortExpression="Address" />
                                                        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                                            SortExpression="Quantity" />
                                                        <asp:BoundField DataField="PricePerUnit" HeaderText="PricePerUnit" 
                                                            SortExpression="PricePerUnit" />
                                                        <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                                                            SortExpression="TotalPrice" />
                                                    </Columns>
                                                    <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSourceOrdersList" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                    SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </section>
        </div>
        
        
    </div>
</asp:Content>
