<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCar.aspx.cs" Inherits="Lab4_LTWeb.ViewCar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 84px;
        }
        .auto-style3 {
            width: 280px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 633px;
        }
        .auto-style7 {
            width: 72%;
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table class="auto-style7">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblNumOfItems" runat="server" Text="Label"></asp:Label>
&nbsp;Items<asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/Images/shopping-cart.png" OnClick="ImageButton1_Click" Width="30px" />
                </td>
            </tr>
        </table>

    </div>
        <div class="auto-style5">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" RepeatColumns="1" BorderStyle="Solid" CellPadding="1" GridLines="Both">
                <EditItemStyle BorderStyle="Solid" />
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                            </td>
                            <td class="auto-style4" rowspan="3">
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("HinhAnh") %>' Width="232px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Price:
                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                                &nbsp;$</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:LinkButton ID="lbtnAddToCart" runat="server" OnClick="lbtnAddToCart_Click">Add To Cart</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4DBConnectionString8 %>" SelectCommand="SELECT * FROM [Cars]"></asp:SqlDataSource>
        </div>
        <div>

            <asp:FormView ID="FormView1" runat="server">
            </asp:FormView>

        </div>
    <div>

    </div>
    </form>
    </body>
</html>
