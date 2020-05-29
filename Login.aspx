<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyForms.Login" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
  
        <div >
            <h1 style="color: #003366"> <asp:Label ID="Label4" runat="server" Text="Welcome to Login Page" Font-Bold="True" Font-Names="Pristina" Font-Size="50px" ForeColor="#D33177"></asp:Label></h1>
            <p>
                &nbsp;</p>
        
       &nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>&nbsp;
        <asp:TextBox ID="LUser" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Username" ForeColor="Red" ControlToValidate="LUser" Display="Dynamic"></asp:RequiredFieldValidator>
        &nbsp;&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="LUser" ErrorMessage="Enter Valid UserName" ForeColor="Blue" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
              &nbsp; &nbsp;&nbsp; <asp:Image ID="Image1" runat="server" ImageUrl="~/login_logo.png" CssClass="auto-style3" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;
        &nbsp;<asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Names="century" Font-Size="Large" ></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="LPassw" runat="server" TextMode="Password"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter password" ForeColor="Red" ControlToValidate="LPassw"></asp:RequiredFieldValidator>

        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

        <br />
        <br />

        <br />
       &nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" Font-Names="Century" Font-Size="Large" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" Font-Bold="True" Font-Names="Century" Font-Size="Large" Width="102px" />
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Wrong Username or Password" ForeColor="Red"></asp:Label>
        <br />
     
    </div>
        
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            z-index: 1;
            left: 535px;
            top: 255px;
            position: absolute;
            height: 232px;
            width: 323px;
            bottom: 23px;
        }
    </style>
</asp:Content>

