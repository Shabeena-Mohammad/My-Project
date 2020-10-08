<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DueDateBills.aspx.cs" Inherits="Project.Bill.DueDateBills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 52%;
        }
        .auto-style2 {
            font-size: large;
            text-align: center;
            background-color: #FF99FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>LIST&nbsp; OF&nbsp; DUE&nbsp; DATE&nbsp; BILLS</strong></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource5" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Bill Title" HeaderText="Bill Title" SortExpression="Bill Title" />
                <asp:BoundField DataField="Bill Category" HeaderText="Bill Category" SortExpression="Bill Category" />
                <asp:BoundField DataField="Bill Amount" HeaderText="Bill Amount" SortExpression="Bill Amount" />
                <asp:BoundField DataField="Date Of Entry" HeaderText="Date Of Entry" SortExpression="Date Of Entry" />
                <asp:BoundField DataField="Bill Due Date" HeaderText="Bill Due Date" SortExpression="Bill Due Date" />
                <asp:BoundField DataField="Bill Payment Mode" HeaderText="Bill Payment Mode" SortExpression="Bill Payment Mode" />
                <asp:BoundField DataField="Bill Status" HeaderText="Bill Status" SortExpression="Bill Status" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [Shabe]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [shab]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [Date]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [Show]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shabeena %>" SelectCommand="SELECT * FROM [Bills]"></asp:SqlDataSource>
    </form>
</body>
</html>
