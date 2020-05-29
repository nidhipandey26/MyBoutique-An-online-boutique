<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="MyForms.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 47%;
        }
        .auto-style4 {
            width: 190px;
        }
        .auto-style5 {
            margin-top: 4px;
        }
        .auto-style6 {
            margin-top: 0px;
        }
        .auto-style7 {
            position: absolute;
            top: 406px;
            left: 690px;
            z-index: 1;
            width: 421px;
            height: 376px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div style="background-color:#E9E9E9">
    <asp:Label ID="Label8" runat="server" Text="Your Order:" Font-Size="50px" ForeColor="#d33177" Font-Bold="True" Font-Names="pristina"></asp:Label>
     <br />
&nbsp;&nbsp;&nbsp;
     <table class="auto-style3">
         <tr>
             <td class="auto-style4">&nbsp;<asp:Label ID="Label9" runat="server" Text="Cloth Id" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>
                                  
             </td>
             <td>
                 <asp:Label ID="Label1" runat="server" Text="Cloth Id"></asp:Label>
                 
             </td>
         </tr>
         <tr>
             <td class="auto-style4">&nbsp;<asp:Label ID="Label10" runat="server" Text="Design Id" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>
                 <br />
             </td>
             <td>
                 <asp:Label ID="Label2" runat="server" Text="Design id"></asp:Label>
                 </td>
         </tr>
         <tr>
             <td class="auto-style4"><asp:Label ID="Label11" runat="server" Text="Ocassion Id" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>
             </td>
             <td><asp:Label ID="Label3" runat="server" Text="Look id"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style4"><asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Century" Text="Selected Cloth"></asp:Label>
             </td>
             <td><asp:Image ID="ClothImage" runat="server" Height="200px" Width="200px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style4"><asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Century" Text="Selected Design" Font-Size="Large"></asp:Label>
             </td>
             <td><asp:Image ID="DesignImage" runat="server" Height="200px" Width="200px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style4"><asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Century" Text="Selected Look" Font-Size="Large"></asp:Label>
                 <asp:Image ID="Image2" runat="server" ImageUrl="~/order.png" CssClass="auto-style7" />
             </td>
             <td><asp:Image ID="OcassionImage" runat="server" Height="200px" Width="200px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style4"><asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Century" Text="Total Price" Font-Size="Large"></asp:Label>
             </td>
             <td><asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style4">&nbsp;</td>
             <td>
                 <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="Confirm Order" Width="147px" OnClientClick = "Confirm()" CssClass="auto-style5" Font-Bold="True" Font-Names="Century" Font-Size="Large"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="Cancel" Width="158px" CssClass="auto-style6" Font-Bold="True" Font-Names="Century" Font-Size="Large" />
             </td>
         </tr>
         </table>
   </div>
            <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm(" Online Payment?")) {
                confirm_value.value = "Yes";
               
            } else {
                confirm_value.value = "No";
                { window.location.href = 'Home.aspx' }
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
     
    
     
</asp:Content>

