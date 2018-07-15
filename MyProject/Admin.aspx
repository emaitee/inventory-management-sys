<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MyProject.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-3" id="info">
                <div>
                    <asp:Label ID="LbNameVal" runat="server" Text="Administrator"></asp:Label><br />
                    <br />
                </div>
                <div>
                    <asp:Label ID="LbCustomerID" runat="server" Text="CustomerID"></asp:Label>
                    <asp:Label ID="LbCustomerIDVal" runat="server" Text=""></asp:Label>
                </div><br />
                <div>
                    <asp:Label ID="LbAddress" runat="server" Text="Address:"></asp:Label>
                    <asp:Label ID="LbAddressVal" runat="server" Text=""></asp:Label>
                </div>  <br />
                <div>
                    <asp:Label ID="LbPhone" runat="server" Text="Phone Number:"></asp:Label>
                    <asp:Label ID="LbPhoneVal" runat="server" Text=""></asp:Label>
                </div>
                </div>
    <section class="col-md-9 ">
      
         <!--- Tabs --->
        <ul class="nav nav-tabs" role="tablist">
            <li class="active"><a href="#stock" role="tab" data-toggle="tab">Inventory</a></li>
            <li><a href="#staff" role="tab" data-toggle="tab">Staff</a></li>
            <li><a href="#customers" role="tab" data-toggle="tab">Customers</a></li>
            <li><a href="#suppliers" role="tab" data-toggle="tab">Suppliers</a></li>
        </ul>

        

        <!---- Tab Content ---->
        <div class="tab-content">
            <div class="active tab-pane fade in" id="stock">
                <h4>Add To Stock</h4>
                <div class="col-md-4">
                    <form role="form">
                      <div class="form-group">
                        <asp:Label ID="LbName" for="txtName" class="control-label" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="txtName" class="form-control" runat="server" placeholder="Stock Name"></asp:TextBox>
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
                      <asp:Label ID="LbStatus" runat="server" Text=""></asp:Label>
                    </form>
                </div>
                <div>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" 
                        HeaderStyle-BackColor="#3AC0F2" CssClass="table-condensed tab-pane" HeaderStyle-ForeColor="White"
                                            AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource4">
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
            </div>
            <div class="tab-pane fade" id="staff">
                <h3 class="text-info"><span class="glyphicon glyphicon-plus-sign"></span> Register Staff</h3><hr />
                 <div class="col-md-5 col-md-push-3 well-lg" id="regForm">
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
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="txtName" Text="Full Name"></asp:Label>
                        <asp:TextBox ID="TextBox1" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <asp:Label ID="LbEmail" runat="server" AssociatedControlID="txtEmail" Text="Email Address"></asp:Label>
                        <asp:TextBox ID="txtEmail" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="txtPhone" Text="Phone Number"></asp:Label>
                        <asp:TextBox ID="txtPhone" placeholder="" class="form-control" runat="server" Width="400px"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <asp:Label ID="Label3" runat="server" AssociatedControlID="txtAddress" Text="Contact Address"></asp:Label>
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
                      <asp:Button ID="btnRegister" runat="server" class="btn btn-primary" Text="Register" 
                             onclick="btnRegister_Click"></asp:Button><br />
                    <asp:Label ID="LbRegisterStatus" runat="server" Text=""></asp:Label>
              </div>
              <div>
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="StaffID" 
        DataSourceID="SqlDataSource1" >
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
        SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
              </div>
            </div>
            <div class="tab-pane fade" id="customers">
                <h4>Customers</h4>
                <div class="col-md-4">
                    <form role="form">
                       <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Username" DataSourceID="SqlDataSource1" >
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
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                            SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
                    </form>
                </div>
            </div>
            <div class="tab-pane fade" id="suppliers">
                <h4>Suppliers</h4>
                <div class="col-md-4">
                    <form role="form">
                      <div class="form-group">
                        <label class="control-label" for="exampleInputEmail">Select Select</label>
                        <asp:DropDownList ID="DropDownList2" class="form-control" runat="server"></asp:DropDownList>
                      </div>
                      
                      
                      <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
