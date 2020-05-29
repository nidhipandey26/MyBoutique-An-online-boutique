<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ManageFeedback.aspx.cs" Inherits="MyForms.ManageFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-right: 6px;
            position: absolute;
            top: 277px;
            left: 559px;
            z-index: 1;
            width: 238px;
        }
        .auto-style4 {
            position: absolute;
            top: 370px;
            left: 558px;
            z-index: 1;
            height: 54px;
        }
        .auto-style5 {
            position: absolute;
            top: 456px;
            left: 562px;
            z-index: 1;
            width: 237px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder2" runat="server">
    <div style="background-color:#E9E9E9">
    <asp:Label ID="Label1" runat="server" Text="Admin can see user's feedback here" Font-Bold="True" Font-Names="Pristina" Font-Size="50px" ForeColor="#d33177"></asp:Label>
        <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="F_Id" DataSourceID="SqlDataSource1" Height="205px" Width="474px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="F_Id" HeaderText="F_Id" InsertVisible="False" ReadOnly="True" SortExpression="F_Id" />
            <asp:BoundField DataField="F_Name" HeaderText="F_Name" SortExpression="F_Name" />
            <asp:BoundField DataField="F_Email" HeaderText="F_Email" SortExpression="F_Email" />
            <asp:BoundField DataField="F_Mob" HeaderText="F_Mob" SortExpression="F_Mob" />
            <asp:BoundField DataField="F_Com" HeaderText="F_Com" SortExpression="F_Com" />
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

    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Manage Order" OnClick="Button1_Click" Font-Bold="True" Font-Names="Century" Font-Size="X-Large" Height="54px" CssClass="auto-style3" />&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="century" Font-Size="X-Large" OnClick="Button2_Click" Text="Manage Payment" CssClass="auto-style4" Width="242px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Manage Feedback" OnClick="Button3_Click" Font-Bold="True" Font-Names="century" Font-Size="X-Large" Height="52px" CssClass="auto-style5" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    &nbsp;&nbsp;
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
    <br />
    <br />
        </div>
    </asp:Content>
