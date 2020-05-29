<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ocassion.aspx.cs" Inherits="MyForms.Ocassion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 106%;
            height: 175px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            margin-right: 0px;
        }
            .auto-style6 {
                width: 18%;
                height: 309px;
                position: absolute;
                top: 474px;
                left: 1049px;
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
            </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
      <div style="background-color:#E9E9E9">
          <table class="auto-style6">
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
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" Width="878px" CssClass="auto-style5">
            <ItemTemplate>
                <asp:Label ID="LblImageUrl" runat="server"  Visible="false" Text='<%# Eval("Look_Image") %>'></asp:Label>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style4" style="background-color: #00FF99"><asp:Label ID="lblID" runat="server" Text='<%# Eval("Look_Id") %>' Font-Bold="True" Font-Names="Pristina" Font-Size="X-Large"></asp:Label>
                             
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Look_Name") %>' Font-Bold="True" Font-Names="Pristina" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image2" runat="server" Height="230px" ImageUrl='<%# Eval("Look_Image") %>' Width="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" ImageUrl="~/addcart.jpg" OnClick="ImageButton1_Click" Width="255px"  CommandArgument='<%# Eval("Look_Id") %>'/>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [Ocassion]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyprojectConnectionString %>" SelectCommand="SELECT * FROM [Ocassion] WHERE ([Gender] = @Gender)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Gender" QueryStringField="gender" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </p>
          </div>
</asp:Content>
