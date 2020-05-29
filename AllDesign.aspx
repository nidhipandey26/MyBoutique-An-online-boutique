<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllDesign.aspx.cs" Inherits="MyForms.AllDesign"  MasterPageFile="~/Site1.Master"%>

     <asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

         <div style="background-color:#E9E9E9">
            
             <table class="auto-style9">
             <tr>
                 <td class="auto-style7" style="font-family: 'Baskerville Old Face'; font-size: x-large; background-color:#FF6699">
                     &nbsp;&nbsp;
                     <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Pristina" ForeColor="#660033" Text="Latest Updates" Font-Size="30px"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8"><marquee scrollamount="5"><asp:Label ID="Label2" runat="server" Text="Stay tuned for latest updates" Font-Bold="True" Font-Names="Pristina" Font-Size="X-Large" ForeColor="#CC3300"></asp:Label></marquee>.
                     <asp:Image ID="Image4" runat="server"  ImageUrl="~/latest.jpg"/>
                     </td>
                 
             </tr>
         </table>
            
             <br />
             <asp:DataList ID="DataList1" runat="server" DataKeyField="Design_Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="auto-style6" Width="1010px">
                 <ItemTemplate>
                      <asp:Label ID="LblGender" runat="server"  Visible="false" Text='<%# Eval("Gender") %>'></asp:Label>
                      <asp:Label ID="LblImageUrl" runat="server"  Visible="false" Text='<%# Eval("Design_Image")%>'></asp:Label>
                     <asp:Label ID="LblID1" runat="server"  Visible="false" Text='<%#Eval("Design_Id")%>'></asp:Label>

                     <table class="auto-style3">
                         <tr>
                             <td class="auto-style4" style="background-color: #66FF33; font-family: times new roman , times, serif"><asp:Label ID="LblId" runat="server" Text='<%# Eval("Design_Id") %>' Font-Bold="True" Font-Names="Pristina" Font-Size="X-Large" ForeColor="#993366"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style5">
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("Design_Name") %>' Font-Bold="True" Font-Names="Pristina" Font-Size="XX-Large" ForeColor="#FF33CC"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 &nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Image ID="Image2" runat="server" Height="230px" ImageUrl='<%# Eval("Design_Image") %>' Width="230px" />
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:ImageButton ID="ImageButton1" runat="server" Height="47px" ImageUrl="~/addcart.jpg" Width="255px" OnClick="ImageButton1_Click" OnClientClick = "Confirm()" CommandArgument='<%# Eval("Design_Id") %>' />
                             </td>
                         </tr>
                     </table>
                     <br />
                 </ItemTemplate>
             </asp:DataList>
             <br />
            
             <br />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [Design]"></asp:SqlDataSource>
             <br />
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [Design] WHERE ([Gender] = @Gender)">
                 <SelectParameters>
                     <asp:QueryStringParameter Name="Gender" QueryStringField="gender" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <br />
            
             <br />
     </div>
          <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want it for ocassion?")) {
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
            width: 100%;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 17px;
        }
        .auto-style6 {
            margin-right: 2px;
        }
            .auto-style7 {
                height: 53px;
                width: 241px;
            }
            .auto-style8 {
                height: 138px;
                width: 241px;
            }
            .auto-style9 {
            margin-right: 2px;
            width: 247px;
            height: 309px;
            position: absolute;
            top: 442px;
            left: 1047px;
            z-index: 1;
        }
    </style>
</asp:Content>

   
    
