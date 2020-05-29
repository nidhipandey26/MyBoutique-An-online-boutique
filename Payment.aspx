<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="MyForms.Payment" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    
        <div style="background-color:#E9E9E9">
            <h1 style="color: #d33177">&nbsp; Make Your Payment</h1>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
    <asp:Label ID="Label1" runat="server" Text="Card Number" Font-Names="Century" Font-Size="Large" Font-Bold="True"></asp:Label></td>
                    <td>
        <asp:TextBox ID="CardNumb" runat="server" MaxLength="16"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter card number" ForeColor="Red" ControlToValidate="CardNumb" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="CardNumb" ErrorMessage="Enter Valid  No" ForeColor="Blue" ValidationExpression="[0-9]{16}$" Display="Dynamic" ></asp:RegularExpressionValidator>
           
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
        <asp:Label ID="Label2" runat="server" Text="Card Type" Font-Names="Century" Font-Size="Large" Font-Bold="True"></asp:Label></td>
                    <td>
        <asp:DropDownList ID="CardType" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Credit Card</asp:ListItem>
            <asp:ListItem>Debit Card</asp:ListItem>
            <asp:ListItem>Master Card</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter card type" ForeColor="Red" ControlToValidate="CardType" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
        <asp:Label ID="Label3" runat="server" Text="Name on Card" Font-Names="Century" Font-Size="Large" Font-Bold="True"></asp:Label></td>
                    <td>
        <asp:TextBox ID="NameOnCard" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter name on card" ForeColor="Red" ControlToValidate="NameOnCard" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="NameOnCard" ErrorMessage="Enter Valid Name" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" ForeColor="Blue"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
        <asp:Label ID="Label4" runat="server" Text="CVV Number" Font-Names="Century" Font-Size="Large" Font-Bold="True"></asp:Label></td>
                    <td>
        <asp:TextBox ID="CVV" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter CVV number" ForeColor="Red" ControlToValidate="CVV" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="CVV" ErrorMessage="Enter Valid Number" ValidationExpression="[0-9]{3}$" ForeColor="Blue"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6"> &nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Pay" OnClick="Button1_Click" OnClientClick = "Confirm()" Font-Names="Century" Font-Size="X-Large" Width="114px"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" Font-Names="Century" Font-Size="X-Large" Width="129px" />
                    </td>
                </tr>
            </table>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/online payment.jpg" BorderColor="Fuchsia" BorderStyle="Solid" CssClass="auto-style7"/></div>

  <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Want to give Feedback?")) {
                confirm_value.value = "Yes";
               
            } else {
                confirm_value.value = "No";
                { window.location.href = 'Home.aspx' }
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>


   </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            width: 47%;
            margin-left: 29px;
            height: 297px;
        }
        .auto-style4 {
            width: 161px;
        }
        .auto-style5 {
            width: 161px;
            height: 41px;
        }
        .auto-style6 {
            height: 41px;
        }
        h1 {
            font-family: Pristina;
            font-size: 50px;
        }
        .auto-style7 {
            position: absolute;
            top: 251px;
            left: 711px;
            z-index: 1;
            width: 481px;
            height: 337px;
            margin-top: 0px;
        }
    </style>
</asp:Content>

