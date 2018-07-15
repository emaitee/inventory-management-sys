<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test4.aspx.cs" Inherits="MyProject.test4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
<body>
    <form id="form1" runat="server">
    <div>
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
                <div>
                    <asp:Button ID="btnViewInventory" runat="server" Text="View Stock List" class="btn btn-info" />
                    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" class="btn" />
                    <asp:Button ID="btnViewCustomersList" runat="server" Text="View Customers List" class="btn" />
                    <asp:Button ID="btnViewSuppliers" runat="server" Text="View Suppliers" class="btn" />
                </div>
                <section class="col-md-9 md">
                <table width="100%" align="center">
                    <tr>
                        <td>
                            <asp:Button ID="Tab1" BorderStyle="None" CssClass="Initial" OnClick="Tab1_Click" runat="server" Text="View Stock List" Width="5em" />
                            <asp:Button ID="Tab2" BorderStyle="None" CssClass="Initial" OnClick="Tab2_Click" runat="server" Text="Start Sale" Width="5em" />
                            <asp:Button ID="Tab3" BorderStyle="None" CssClass="Initial" OnClick="Tab3_Click" runat="server" Text="View Customers" Width="5em" />
                            <asp:Button ID="Tab4" BorderStyle="None" CssClass="Initial" OnClick="Tab4_Click" runat="server" Text="View Suppliers" Width="5em" />
                            <asp:Button ID="Tab5" BorderStyle="None" CssClass="Initial" OnClick="Tab5_Click" runat="server" Text="View Orders" Width="5em" />
                            <asp:MultiView ID="MainView" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                                    <asp:gridview runat="server" AutoGenerateColumns="False" 
                                                        DataSourceID="SqlDataSource1" >
                                                        <Columns>
                                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                                                SortExpression="Address" />
                                                            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                                                SortExpression="Quantity" />
                                                            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                                                                SortExpression="TotalPrice" />
                                                            <asp:BoundField DataField="PricePerUnit" HeaderText="PricePerUnit" 
                                                                SortExpression="PricePerUnit" />
                                                        </Columns>
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:myProjectDBConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
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
                                                
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                                    
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View5" runat="server">
                                    <table style="width:100%; border-width:0px; border-color:#666; border-style:solid">
                                        <tr>
                                            <td>
                                                
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
    </form>
</body>
</html>
