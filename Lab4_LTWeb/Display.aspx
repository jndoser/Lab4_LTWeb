<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="Lab4_LTWeb.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            font-weight: bold;
            text-decoration: underline;
            text-align: center;
        }
        .auto-style3 {
            width: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">View Shopping Card</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="434px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="MaSP" HeaderText="MaSP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
                                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4DBConnectionString9 %>" SelectCommand="SELECT [MaSP], [TenSP], [Gia] FROM [Cars]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlPayment" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="ddlPayment_SelectedIndexChanged" Width="146px">
                            <asp:ListItem Selected="True">MasterCard</asp:ListItem>
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>Total: <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
&nbsp;$</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
