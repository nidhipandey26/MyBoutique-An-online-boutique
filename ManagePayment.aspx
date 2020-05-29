<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ManagePayment.aspx.cs" Inherits="MyForms.ManagePayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        margin-top: 16px;
            position: absolute;
            top: 455px;
            left: 497px;
            z-index: 1;
            width: 230px;
        }
        .auto-style4 {
            margin-top: 16px;
            position: absolute;
            top: 279px;
            left: 498px;
            z-index: 1;
            width: 235px;
        }
        .auto-style5 {
            position: absolute;
            top: 384px;
            left: 496px;
            z-index: 1;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder2" runat="server">
    <div style="background-color:#E9E9E9">
        <asp:Label ID="Label1" runat="server" Text="Admin can see user's payment here" Font-Bold="True" Font-Names="Pristina" Font-Size="50px" ForeColor="#D33177"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="P_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="P_Id" HeaderText="P_Id" InsertVisible="False" ReadOnly="True" SortExpression="P_Id" />
            <asp:BoundField DataField="Card_no" HeaderText="Card_no" SortExpression="Card_no" />
            <asp:BoundField DataField="Card_type" HeaderText="Card_type" SortExpression="Card_type" />
            <asp:BoundField DataField="Card_Name" HeaderText="Card_Name" SortExpression="Card_Name" />
            <asp:BoundField DataField="Cvv" HeaderText="Cvv" SortExpression="Cvv" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Manage Order" OnClick="Button1_Click" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" Height="54px" CssClass="auto-style4" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="century" Font-Size="X-Large" Height="56px" OnClick="Button2_Click" Text="Manage Payment" CssClass="auto-style5" Width="238px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Manage Feedback" OnClick="Button3_Click" Font-Bold="True" Font-Names="century" Font-Size="X-Large" Height="51px" CssClass="auto-style3" />
        <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [Payment]"></asp:SqlDataSource>
        <br />
        <br />
</div>
</asp:Content>
