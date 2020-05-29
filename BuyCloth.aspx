<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyCloth.aspx.cs" Inherits="MyForms.BuyCloth" MasterPageFile="~/Site1.Master" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
     
     <div style="background-color:#E9E9E9">  
         <asp:Label ID="Label1" runat="server" Text="Category:" Font-Bold="True" Font-Names="Pristina" Font-Size="40px" ForeColor="#009933"></asp:Label>&nbsp; 
                
         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="X-Large">Male</asp:LinkButton>
         
         &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click1" Font-Size="X-Large">Female</asp:LinkButton>
         &nbsp;<br />
         <br />

         &nbsp;&nbsp;&nbsp;<table class="auto-style6">
             <tr>
                 <td class="auto-style7" style="font-family: 'Baskerville Old Face'; font-size: x-large; background-color:#FF6699">
                     &nbsp;&nbsp;
                     <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Pristina" ForeColor="#660033" Text="Latest Updates" Font-Size="30px"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8"><marquee scrollamount="5"><asp:Label ID="Label2" runat="server" Text="Stay tuned for latest updates" Font-Bold="True" Font-Names="Pristina" Font-Size="X-Large" ForeColor="#CC3300"></asp:Label></marquee>.
                     <asp:Image ID="Image4" runat="server"  ImageUrl="~/latest.jpg" Height="255px" Width="250px"/>
                     </td>
                 
             </tr>
         </table>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="893px" CssClass="auto-style9">
             <ItemTemplate>
                 &nbsp;
                 <asp:Label ID="LblGender" runat="server"  Visible="false" Text='<%# Eval("Gender") %>'></asp:Label>
                 <asp:Label ID="LblImageUrl" runat="server"  Visible="false" Text='<%# Eval("Cloth_Image") %>'></asp:Label>
                 <asp:Label ID="LblPrice" runat="server" Visible="false" Text='<%# Eval("Cloth_Price") %>'></asp:Label>
                 <table class="auto-style3">
                     <tr>
                         <td class="auto-style4" style="background-color: #FF66FF"><asp:Label ID="LblID" runat="server" Font-Size="X-Large" Text='<%# Eval("Cloth_Id") %>' Font-Bold="True" Font-Names="Pristina"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style4" style="background-color: #FFFFFF">
                             <asp:Label ID="Label6" runat="server" Text='<%# Eval("Cloth_Name") %>' Font-Bold="True" Font-Names="Pristina" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             &nbsp;&nbsp;
                             <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Cloth_Image") %>' Height="230px" Width="230px" />
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label8" runat="server" Text="Price:" Font-Bold="True" Font-Names="Pristina" Font-Size="XX-Large" ForeColor="Fuchsia"></asp:Label>
                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("Cloth_Price") %>' Font-Size="X-Large"></asp:Label>
                             <asp:Label ID="Label9" runat="server" Text="Rs" Font-Size="Large"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style5" Height="53px" ImageUrl="~/addcart.jpg"  Width="255px" OnClick="ImageButton1_Click"  CommandArgument='<%# Eval("Cloth_Id") %>' />
                         </td>
                     </tr>
                 </table>
                 <br />
             </ItemTemplate>
         </asp:DataList>
         &nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [Cloth]"></asp:SqlDataSource><br />
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [Cloth] WHERE ([Gender] = @Gender)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="Gender" QueryStringField="gender" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <br />

</div>
     
     <br />
     <br />
     
       </asp:Content>
   
    <asp:Content ID="Content2" runat="server" contentplaceholderid="head">
        <style type="text/css">
            .auto-style1 {
                width: 211px;
                height: 201px;
            }
            .auto-style3 {
                width: 100%;
                height: 171px;
            }
            .auto-style4 {
                height: 34px;
            }
            .auto-style5 {
                margin-top: 3px;
            }
            .auto-style6 {
                width: 18%;
                height: 309px;
                position: absolute;
                top: 538px;
                left: 1032px;
                z-index: 1;
            }
            .auto-style7 {
                height: 53px;
                width: 309px;
            }
            .auto-style8 {
                height: 138px;
                width: 309px;
            }
            .p {
                font-family: "Baskerville Old Face";
                font-size: medium;
                color: #FF00FF;
            }
            .h1 {
                font-family: "Baskerville Old Face";
                color: #0033CC;
            }
            .auto-style9 {
                margin-right: 102px;
            }
            </style>
        </asp:Content>

   
    