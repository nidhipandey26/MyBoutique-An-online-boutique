<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="MyForms.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 54%;
            height: 342px;
        }
        .auto-style5 {
            height: 50px;
        }
        .auto-style6 {
            width: 235px;
            height: 70px;
        }
        .auto-style7 {
            height: 50px;
            width: 235px;
        }
        .auto-style12 {
            width: 235px;
            height: 59px;
        }
        .auto-style13 {
            height: 59px;
        }
        .auto-style14 {
            width: 235px;
            height: 64px;
        }
        .auto-style15 {
            height: 64px;
        }
        .auto-style16 {
            width: 235px;
            height: 57px;
        }
        .auto-style17 {
            height: 57px;
        }
        .auto-style18 {
            height: 70px;
        }
        .auto-style19 {
            position: absolute;
            top: 287px;
            left: 737px;
            z-index: 1;
            width: 367px;
            height: 310px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Forget Password" Font-Size="50px" ForeColor="#D33177" Font-Bold="True" Font-Names="Pristina" ></asp:Label>
    
    <br />
    <br />
    
    <table class="auto-style4">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="202px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="Label3" runat="server" Text="New Password" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Width="202px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="Label4" runat="server" Text="Confirm Password" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox4" runat="server" Width="202px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Something Went Wrong" Visible="False"></asp:Label>
            </td>
            <td class="auto-style18">&nbsp;
                <asp:Button ID="Button1" runat="server"  Text="Reset" CssClass="auto-style1" Height="36px" Width="126px" Font-Bold="True" Font-Names="century" Font-Size="X-Large" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server"  Text="Cancel" CssClass="auto-style1" Height="36px" Width="126px" Font-Bold="True" Font-Names="century" Font-Size="X-Large" />
            </td>
        </tr>
    </table>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/forgotpassword.png" CssClass="auto-style19" />
</asp:Content>
