<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyForms.Register" MasterPageFile="~/Site1.Master" %>



 <asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
   
    
     <div style="background-color: #E9E9E9" >
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Boutiqueimage.jpg" BorderColor="Fuchsia" BorderStyle="Solid" CssClass="auto-style5" />
            <h1 style="color:#d33177">&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Pristina" Font-Size="50px" Text="Register Here"></asp:Label>
         </h1>
        
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        &nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" ForeColor="Red" ControlToValidate="Txtname" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txtname" ErrorMessage="Enter Valid Name" ForeColor="Blue" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            <br />
        <br />
        &nbsp;
        &nbsp;<asp:Label ID="Label2" runat="server" Text="Username" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Username" ForeColor="Red" ControlToValidate="TxtUserName" Display="Dynamic"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtUserName" ErrorMessage="Enter Valid Username" ForeColor="Blue" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        <br />
        &nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox> 

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your correct password" ForeColor="Red" ControlToValidate="TxtPass" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtPass" ErrorMessage="Password not strong" ForeColor="Blue" OnServerValidate="CustomValidator1_ServerValidate" Display="Dynamic"></asp:CustomValidator>
        <br />
        <br />
        &nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Confirm Password" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TxtConfirm" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Confirm your password" ForeColor="Red" ControlToValidate="TxtConfirm" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter correct password" ControlToCompare="TxtPass" ControlToValidate="TxtConfirm" ForeColor="Blue" Display="Dynamic"></asp:CompareValidator>
        <br />
        <br />
        &nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="Mobile No" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TxtMob" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter mobile number" ForeColor="Red" ControlToValidate="TxtMob" Display="Dynamic"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtMob" ErrorMessage="Enter Valid Mobile No" ForeColor="Blue" ValidationExpression="[0-9]{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
        &nbsp;
        <br />
        &nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Text="Email Id" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter valid E-mail Id" ForeColor="Red" ControlToValidate="TxtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Correct E-mail Id" ForeColor="Blue" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Text="Address" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TxtAdd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter address" ForeColor="Red" ControlToValidate="TxtAdd" Display="Dynamic"></asp:RequiredFieldValidator>
        
        <br />
        <br />
        &nbsp;&nbsp; <asp:Label ID="Label8" runat="server" Text="City" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage=" Please enter city" ForeColor="Red" ControlToValidate="TxtCity" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtCity" ErrorMessage="Enter Valid City" ForeColor="Blue" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            <br />
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Submit" style="background-color: #FFFFFF; " OnClick="Button1_Click" CssClass="auto-style3" Font-Bold="True" Font-Names="Century" Font-Size="Large" Height="52px" Width="124px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" CssClass="auto-style4" Font-Bold="True" Font-Names="Century" Font-Size="Large" Height="54px" Width="143px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <br />
        <br />
       </div>
  

                 </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
       
        .auto-style3 {
            margin-top: 18px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
       
        .auto-style5 {
            z-index: 1;
            left: 564px;
            top: 282px;
            position: absolute;
            height: 337px;
            width: 459px;
            bottom: 76px;
        }
       
    </style>
</asp:Content>

