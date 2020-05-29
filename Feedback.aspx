<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="MyForms.Feedback" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div style="background-color:#E9E9E9">
            
            <h1 style="color: #003366">&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="pristina" Font-Size="50px" ForeColor="#D33177" Text="Give Feedback"></asp:Label>
            </h1>
        
    
            <br />
        
    
        &nbsp;&nbsp;
        
    
        <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="Fdname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="Red" ControlToValidate="Fdname" Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Fdname" ErrorMessage="Enter Valid Name" ForeColor="Blue" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            <br />
        <br />
        &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Email Id" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="FdEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter E-mail Id" ForeColor="Red" ControlToValidate="FdEmail" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FdEmail" ErrorMessage="Enter valid E-mail Id" ForeColor="Blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label3" runat="server" Text="Mobile No" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>&nbsp; &nbsp;<asp:TextBox ID="FdMbNo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Mobile Number" ForeColor="Red" ControlToValidate="FdMbNo" Display="Dynamic"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="FdMbNo" ErrorMessage="Enter Valid Mobile No" ForeColor="Blue" ValidationExpression="[0-9]{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label4" runat="server" Text="Comment" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="FdComent" runat="server" TextMode="MultiLine"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please give comment" ForeColor="Red" ControlToValidate="FdComent" Display="Dynamic"></asp:RequiredFieldValidator>

        &nbsp;<br />
        <br />

        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" Font-Names="Century" Font-Size="Large" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" Font-Bold="True" Font-Names="Century" Font-Size="Large" />
    
                 <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/feedback2.png" CssClass="auto-style3" BorderColor="Fuchsia" BorderStyle="Solid" />
    
                 <br />
    
                 <br />
    
                 </div>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 259px;
            left: 554px;
            z-index: 1;
            height: 315px;
            width: 513px;
            right: 235px;
        }
    </style>
    </asp:Content>

