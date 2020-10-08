<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillList.aspx.cs" Inherits="Project.Bill.BillList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 35px;
        }
        .auto-style2 {
            height: 26px;
            text-align: center;
            font-size: large;
            width: 462px;
            background-color: #336600;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>BILL&nbsp; REPORTS</strong></td>
            </tr>
        </table>
        <p class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Bill Title" HeaderText="Bill Title" SortExpression="Bill Title" />
                    <asp:BoundField DataField="Bill Category" HeaderText="Bill Category" SortExpression="Bill Category" />
                    <asp:BoundField DataField="Bill Amount" HeaderText="Bill Amount" SortExpression="Bill Amount" />
                    <asp:BoundField DataField="Date Of Entry" HeaderText="Date Of Entry" SortExpression="Date Of Entry" />
                    <asp:BoundField DataField="Bill Due Date" HeaderText="Bill Due Date" SortExpression="Bill Due Date" />
                    <asp:BoundField DataField="Bill Payment Mode" HeaderText="Bill Payment Mode" SortExpression="Bill Payment Mode" />
                    <asp:BoundField DataField="Bill Status" HeaderText="Bill Status" SortExpression="Bill Status" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [Shabe]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [shab]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [Date]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [Show]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [Bills]"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
