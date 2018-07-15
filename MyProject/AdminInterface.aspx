<%@ Page Title="" Language="C#" MasterPageFile="~/Primary.Master" AutoEventWireup="true" CodeBehind="AdminInterface.aspx.cs" Inherits="MyProject.AdminInterface" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row"><!--col-md-6 col-md-push-3 well-lg alert-info-->
        <div class="col-md-10 col-md-push-1 " id="AdminInterface">
        <div class="col-md-7">
                <div>
                    <h2>Administrator</h2>
                    <br />
                </div>

                
                </div>
                <section >
                <table width="100%" align="center">
                    <tr>
                        <td>
                            <asp:Button ID="Tab1" BorderStyle="None" CssClass="Initial" OnClick="Tab1_Click" runat="server" Text="Stock" Width="13em" />
                            <asp:Button ID="Tab2" BorderStyle="None" CssClass="Initial" OnClick="Tab2_Click" runat="server" Text="Staff" Width="13em" />
                            <asp:Button ID="Tab3" BorderStyle="None" CssClass="Initial" OnClick="Tab3_Click" runat="server" Text="Customers" Width="13em" />
                            <asp:Button ID="Tab4" BorderStyle="None" CssClass="Initial" OnClick="Tab4_Click" runat="server" Text="Suppliers" Width="13em" />
                            <asp:Button ID="Tab5" BorderStyle="None" CssClass="Initial" OnClick="Tab5_Click" runat="server" Text="Orders" Width="13em" />
                            
                            <asp:MultiView ID="MainView" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                            <div class="well alert-success row">
                                                <h4>Add To Stock</h4>
                                                    <div class="col-md-4">
                                                        <form role="form">
                                                          <div class="form-group">
                                                            <asp:Label ID="LbStockName" for="txtName" class="control-label" runat="server" Text="Name"></asp:Label>
                                                            <asp:TextBox ID="txtStockName" class="form-control" runat="server" placeholder="Stock Name"></asp:TextBox>
                                                          </div>
                                                          <div class="form-group">
                                                            <asp:Label ID="LbCat" for="txtCat" class="control-label" runat="server" Text="Category"></asp:Label>
                                                            <asp:TextBox ID="txtCat" class="form-control" runat="server" placeholder="Category"></asp:TextBox>
                                                          </div>
                                                          <div class="form-group">
                                                            <asp:Label ID="LbQtty" for="txtQtty" class="control-label" runat="server" Text="Quantity In Stock"></asp:Label>
                                                            <asp:TextBox ID="txtQtty" class="form-control" runat="server" placeholder="Quantity in stock"></asp:TextBox>
                                                          </div>
                                                          <div class="form-group">
                                                            <asp:Label ID="LbPrice" for="txtPrice" class="control-label" runat="server" Text="Price"></asp:Label>
                                                            <asp:TextBox ID="txtPrice" class="form-control" runat="server" placeholder="Price"></asp:TextBox>
                                                          </div>
                                                          <asp:Button ID="btnAdd" runat="server" class="btn btn-info" Text="Add" 
                                                              onclick="btnAdd_Click"></asp:Button>
                                                          <br />
                                                          <asp:Label ID="LbStockStatus" runat="server" Text=""></asp:Label>
                                                        </form>
                                                    </div>
                                                    <div>
                                                        <br />
                                                        <asp:GridView ID="GridView1" runat="server" 
                                                            HeaderStyle-BackColor="#3AC0F2" CssClass="table-condensed tab-pane" HeaderStyle-ForeColor="White"
                                                                                AutoGenerateColumns="False" 
                                                            DataSourceID="SqlDataSource4" Width="386px">
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
                                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                            SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
                                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
                                                    </div></div>
                                                <div class="col-md-5 well">
                                                  <h3>Delete Item from Stock</h3>
                                                  <hr />
                                                    <div class="form-group">
                                                            <asp:Label ID="Label3" class="control-label" runat="server" AssociatedControlID="txtDLTItemName" Text="Item Name"></asp:Label>
                                                            <asp:TextBox ID="txtDLTItemName" placeholder="" class="form-control" runat="server" Width="300px"></asp:TextBox>
                                                          </div>
                                                     <asp:Button ID="btnDeletItem" class="btn btn-danger" runat="server" 
                                                        Text="Delete Item" onclick="btnDeletItem_Click"></asp:Button><br />
                                                     <asp:Label ID="LbDLTItemStatus"  runat="server" Text=""></asp:Label>
                                                  </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                            <div class="well alert-success">
                                            <div class="row">
                                                <h3 class="text-info"><span class="glyphicon glyphicon-plus-sign"></span> Register or Delete Staff</h3><hr />
                                                <div class="col-md-5" id="regForm">
                                                    <div class="form-group">
                                                        <asp:Label ID="LbAccType" class="control-label" runat="server" AssociatedControlID="dropDwnAccType" Text="Account Type"></asp:Label>
                                                        <asp:DropDownList ID="dropDwnAccType" runat="server">
                                                            <asp:ListItem Value=""></asp:ListItem>
                                                            <asp:ListItem Value="Administrator"></asp:ListItem>
                                                            <asp:ListItem Value="Sales Representative"></asp:ListItem>
                                                        </asp:DropDownList>    
                                                    </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbStaffID" class="control-label" runat="server" AssociatedControlID="txtStaffID" Text="StaffID"></asp:Label>
                                                        <asp:TextBox ID="txtStaffID" placeholder="" class="form-control" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbStaffName" runat="server" AssociatedControlID="txtStaffName" class="control-label" Text="Full Name"></asp:Label>
                                                        <asp:TextBox ID="txtStaffName" placeholder="" class="form-control" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbStaffEmail" runat="server" AssociatedControlID="txtStaffEmail" class="control-label" Text="Email Address"></asp:Label>
                                                        <asp:TextBox ID="txtStaffEmail" placeholder="" class="form-control" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbStaffPhone" runat="server" AssociatedControlID="txtStaffPhone" class="control-label" Text="Phone Number"></asp:Label>
                                                        <asp:TextBox ID="txtStaffPhone" placeholder="" class="form-control" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbStaffAddress" runat="server" AssociatedControlID="txtStaffAddress" class="control-label" Text="Contact Address"></asp:Label>
                                                        <asp:TextBox ID="txtStaffAddress" placeholder="" class="form-control" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbStaffPassword" runat="server" AssociatedControlID="txtStaffPassword" class="control-label" Text="Password"></asp:Label>
                                                        <asp:TextBox ID="txtStaffPassword" type="password" class="form-control" placeholder="" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbStaffRetypePswd" runat="server" AssociatedControlID="txtStaffRetypePassword" class="control-label" Text="Retype Password"></asp:Label>
                                                        <asp:TextBox ID="txtStaffRetypePassword" type="password" class="form-control" placeholder="" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                      <asp:Button ID="btnRegister" runat="server" class="btn btn-primary" Text="Register" 
                                                             onclick="btnRegister_Click"></asp:Button>
                                                             <br />
                                                    <asp:Label ID="LbStaffStatus" runat="server" Text=""></asp:Label>
                                              </div>
                                              <div class="col-md-6">
                                                  <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                                                      CssClass="table-condensed tab-pane" DataKeyNames="StaffID" 
                                                      DataSourceID="SqlDataSource1" HeaderStyle-BackColor="#3AC0F2" 
                                                      HeaderStyle-ForeColor="White" Width="386px">
                                                      <Columns>
                                                          <asp:BoundField DataField="AccType" HeaderText="AccType" 
                                                              SortExpression="AccType" />
                                                          <asp:BoundField DataField="StaffID" HeaderText="StaffID" ReadOnly="True" 
                                                              SortExpression="StaffID" />
                                                          <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                          <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                          <asp:BoundField DataField="Address" HeaderText="Address" 
                                                              SortExpression="Address" />
                                                          <asp:BoundField DataField="Password" HeaderText="Password" 
                                                              SortExpression="Password" />
                                                      </Columns>
                                                      <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                  </asp:GridView>
                                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                      ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                      SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
                                                  <br />
                                                  </div></div>
                                              </div><br />
                                              <div class="col-md-5 well">
                                              <h3>Delete Staff</h3>
                                              <hr />
                                                <div class="form-group">
                                                        <asp:Label ID="Label1" class="control-label" runat="server" AssociatedControlID="txtStaffID" Text="StaffID"></asp:Label>
                                                        <asp:TextBox ID="txtDLTStaffID" placeholder="" class="form-control" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                 <div class="form-group">
                                                        <asp:Label ID="Label2" runat="server" AssociatedControlID="txtStaffEmail" class="control-label" Text="Email Address"></asp:Label>
                                                        <asp:TextBox ID="txtDLTEmail" placeholder="" class="form-control" runat="server" Width="300px"></asp:TextBox>
                                                      </div>
                                                 <asp:Button ID="btnDLT" class="btn btn-danger" runat="server" Text="Delete Staff" 
                                                      onclick="btnDLT_Click"></asp:Button><br />
                                                 <asp:Label ID="LbDLTStatus"  runat="server" Text=""></asp:Label>
                                              </div>
                                              
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                                <br /><br />
                                                <div class="well row alert-info">
                                                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                                                        CssClass="table-condensed tab-pane" DataKeyNames="Username" 
                                                        DataSourceID="SqlDataSource3" HeaderStyle-BackColor="#3AC0F2" 
                                                        HeaderStyle-ForeColor="White" Width="386px">
                                                        <Columns>
                                                            <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" 
                                                                SortExpression="Username" />
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                                                SortExpression="Address" />
                                                            <asp:BoundField DataField="Password" HeaderText="Password" 
                                                                SortExpression="Password" />
                                                        </Columns>
                                                        <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                                <div class="well alert-info row">
                                                    <h3 class="text-info"><span class="glyphicon glyphicon-plus-sign"></span>Add Suppliers</h3><hr />
                                                    <div class="col-md-5">
                                                      <div class="form-group">
                                                        <asp:Label ID="LbSupplierName" runat="server" class="control-label" AssociatedControlID="txtSupplierName" Text="Name"></asp:Label>
                                                        <asp:TextBox ID="txtSupplierName" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbSupplierEmail" runat="server" class="control-label" AssociatedControlID="txtSupplierEmail" Text="Email Address"></asp:Label>
                                                        <asp:TextBox ID="txtSupplierEmail" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbSupplierPhone" runat="server" class="control-label" AssociatedControlID="txtSupplierPhone" Text="Phone Number"></asp:Label>
                                                        <asp:TextBox ID="txtSupplierPhone" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
                                                      </div>
                                                      <div class="form-group">
                                                        <asp:Label ID="LbSupplierAddress" runat="server" class="control-label" AssociatedControlID="txtSupplierAddress" Text="Contact Address"></asp:Label>
                                                        <asp:TextBox ID="txtSupplierAddress" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
                                                      </div>
                                                          <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                                                Text="Add" onclick="btnAddSupplier_Click"  
                                                                    ></asp:Button><br />
                                                          <asp:Label ID="LbSupplierStatus" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                                        CssClass="table-condensed tab-pane" DataSourceID="SqlDataSource6" 
                                                        HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" 
                                                        Width="472px">
                                                        <Columns>
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                                                SortExpression="Address" />
                                                        </Columns>
                                                        <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>
                                                </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View5" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                            <br /><br />
                                                <div class="well alert-info row">
                                                    <asp:GridView runat="server" ID="GridView4" AutoGenerateColumns="False" 
                                                        CssClass="table-condensed tab-pane" DataSourceID="SqlDataSource7" 
                                                        HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Width="386px" >
                                                        <Columns>
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                                                SortExpression="Address" />
                                                            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                                                SortExpression="Quantity" />
                                                            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                                                                SortExpression="TotalPrice" />
                                                        </Columns>
                                                        <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </section>
                <!--<div class="">
                    <asp:Button ID="btnAddItems" runat="server" Text="Add Goods To Inventory" class="btn btn-block btn-info" />
                    <asp:Button ID="btnViewInventory" runat="server" Text="View Inventory" 
                        class="btn btn-danger btn-block" />
                    <asp:Button ID="btnAddStaff" runat="server" Text="Register Staff" class="btn btn-block btn-primary" />
                    <asp:Button ID="btnViewStaffList" runat="server" Text="View Staff List" class="btn btn-block btn-success" />
                    <asp:Button ID="btnViewCustomersList" runat="server" Text="View Customers List" class="btn btn-block btn-warning" />
                    <asp:Button ID="btnAddSupplier" runat="server" Text="Add New Supplier" class="btn btn-block btn-info" />
                    <asp:Button ID="btnViewSuppliers" runat="server" Text="View Suppliers" class="btn btn-block btn-primary" />
                </div><hr />-->
                <br />
                <asp:Calendar ID="Calendar1" runat="server" class="" ></asp:Calendar>
        </div>
        
        
        
    </div>
</asp:Content>
