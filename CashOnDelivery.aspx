<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CashOnDelivery.aspx.cs" Inherits="MyForms.CashOnDelivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        h1 {
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            color: #00CC00;
        }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div style="background-color:#E9E9E9">
        <asp:Label ID="Label2" runat="server" Text="Thank you for shopping with us." Font-Bold="True" Font-Names="Pristina" Font-Size="50px" ForeColor="#D33177"></asp:Label>
        <br />
        <br />
    <asp:Label ID="Label1" runat="server" Text="Your Address:" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="61px" Width="376px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please enter your address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" Font-Names="Century" Font-Size="Large" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" Font-Bold="True" Font-Names="Century" Font-Size="Large" />
        </div>
</asp:Content>
