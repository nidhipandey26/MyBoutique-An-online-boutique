<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ManageOrder.aspx.cs" Inherits="MyForms.ManageOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        margin-right: 6px;
            position: absolute;
            top: 265px;
            left: 950px;
            z-index: 1;
            height: 48px;
            width: 265px;
        }
        .auto-style4 {
            position: absolute;
            top: 343px;
            left: 952px;
            z-index: 1;
            width: 267px;
            height: 49px;
        }
        .auto-style5 {
            position: absolute;
            top: 424px;
            left: 955px;
            z-index: 1;
            height: 44px;
            width: 266px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Admin Can See Users Order Here" Font-Bold="True" Font-Names="Pristina" Font-Size="50px" ForeColor="#D33177"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Order_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="109px"  Width="636px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Order_Id" HeaderText="Order_Id" InsertVisible="False" ReadOnly="True" SortExpression="Order_Id" />
            <asp:BoundField DataField="Order_Cloth_Id" HeaderText="Order_Cloth_Id" SortExpression="Order_Cloth_Id" />
            <asp:BoundField DataField="Order_Design_Id" HeaderText="Order_Design_Id" SortExpression="Order_Design_Id" />
            <asp:BoundField DataField="Order_Look_Id" HeaderText="Order_Look_Id" SortExpression="Order_Look_Id" />
            <asp:BoundField DataField="Order_ClothImg" HeaderText="Order_ClothImg" SortExpression="Order_ClothImg" />
            <asp:BoundField DataField="Order_DesignImg" HeaderText="Order_DesignImg" SortExpression="Order_DesignImg" />
            <asp:BoundField DataField="Order_LookImg" HeaderText="Order_LookImg" SortExpression="Order_LookImg" />
            <asp:BoundField DataField="Order_Cost" HeaderText="Order_Cost" SortExpression="Order_Cost" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Manage Order" OnClick="Button1_Click" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" CssClass="auto-style3" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="century" Font-Size="X-Large" OnClick="Button2_Click" Text="Manage Payment" CssClass="auto-style4" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Manage Feedback" OnClick="Button3_Click" Font-Bold="True" Font-Names="century" Font-Size="X-Large" CssClass="auto-style5" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [OrderTable]"></asp:SqlDataSource>
<br />
    <br />
</asp:Content>
