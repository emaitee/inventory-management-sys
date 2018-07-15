<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="MyProject.test2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .Initial
        {
            display:block;
            padding:4px 18px 4px 18px;
            float:left;
            background-color:Gray;
            color:Black;
            font-weight:bold;
        }
        .Initial:hover
        {
            color:Blue;
            background:White;
        }
        .Clicked
        {
            float:left;
            display:block;
            background:blue no-repeat right top;
            padding:4px 18px 4px 18px;
            color:Black;
            font-weight:bold;
            color:White;
        }
        //#itemsPan
        {
            padding:100px 0px 0px 0px;
        }
        #head{margin:0px 0px 50px 0px}
            
    </style>
</head>
<body style="font-family:Calibri" background="images/stoc.jpg">
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div >
                <header class="col-md-10 col-md-push-1" id="head">
                    <div class="col-md-2">
                        <img src="#" class="img-responsive" />
                    </div>
                    <div class="col-md-10">
                        <h2>Online Stock Management System</h2>
                    </div>
                    <ul class="nav nav-pills">
                      <li class="active"><a href="#">Association</a></li>
                      <li><a href="#">Members</a></li>
                      <li><a href="#">Attendance</a></li>
                      <li><asp:Button ID="Button2" class="btn btn-default right" runat="server" Text="Logout" 
                              ></asp:Button></li>
                    </ul>
                </header>
           </div>
           
           <div id="itemsPan">
            <div class="col-md-3" id="info">
                <div>
                        <asp:Label ID="LbNameVal" runat="server" Text="Administrator"></asp:Label><br />
                        <br />
                    </div>
                    <div>
                        <asp:Label ID="LbAdminAddress" runat="server" Text="Address:"></asp:Label>
                        <asp:Label ID="LbAdminAddressVal" runat="server" Text=""></asp:Label>
                    </div>  <br />
                    <div>
                        <asp:Label ID="LbAdminPhone" runat="server" Text="Phone Number:"></asp:Label>
                        <asp:Label ID="LbAdminPhoneVal" runat="server" Text=""></asp:Label>
                    </div>
            </div>
            <section class="col-md-9 md">
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
                                                    </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                                <h3 class="text-info"><span class="glyphicon glyphicon-plus-sign"></span> Register Staff</h3><hr />
                                                <div class="col-md-5 well-lg" id="regForm">
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
                                                             onclick="btnRegister_Click"></asp:Button><br />
                                                    <asp:Label ID="LbStaffStatus" runat="server" Text=""></asp:Label>
                                              </div>
                                              <div class="col-md-6">
                                                  
                                                  <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
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
                                                  
                                              </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
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
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
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
                                                          <asp:Button ID="btnAddSupplier" runat="server" class="btn btn-primary" 
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
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View5" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
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
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="Scripts/jquery-3.1.1-vsdoc.js" type="text/javascript"></script>
    </form>
</body>
</html>

