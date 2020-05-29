<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyForms.Home" MasterPageFile="~/Site1.Master" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
        
      
       <marquee scrollsmount="10"> <asp:Label ID="Label1" runat="server" Text="Welcome to Myboutique" Font-Bold="True" Font-Names="Pristina" Font-Size="70px" ForeColor="#D33177"></asp:Label></marquee>       
        <div>
            <asp:Image ID="Image1" runat="server"  ImageUrl="~/home/h4.jpg" Height="331px" Width="409px" BorderStyle="Solid" BorderColor="#FF3399"/>
            <asp:Image ID="Image12" runat="server"  ImageUrl="~/home/moni.jpg" Height="334px" Width="489px" BorderStyle="Solid" CssClass="auto-style5" BorderColor="#FF3399"/>
            <asp:Image ID="Image15" runat="server"  ImageUrl="~/home/dress5.jpg" Height="334px" Width="344px" BorderStyle="Solid" CssClass="auto-style4" BorderColor="#FF3399"/>
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
            <marquee scrollamount="5"><asp:Label ID="Label3" runat="server" Text="Here We Provide You The Latest Designs" Font-Bold="True" Font-Names="Pristina" Font-Size="40px" ForeColor="#FF33CC"></asp:Label></marquee>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <br />
           
            <asp:Image ID="Image4" runat="server"  ImageUrl="~/home/h5.jpg" Height="336px" Width="636px" BorderColor="#FF33CC" BorderStyle="Solid"/>
            <asp:Image ID="Image11" runat="server"  ImageUrl="~/home/h10.jpg" Height="336px" Width="247px" CssClass="auto-style4" BorderColor="#FF3399" BorderStyle="Solid"/>
            <asp:Image ID="Image6" runat="server"  ImageUrl="~/home/h2.jpg" Height="336px" Width="357px" BorderColor="#FF3399" BorderStyle="Solid"/>
            <br />
            <marquee scrollamount="5"><asp:Label ID="Label4" runat="server" Text="Here We Give You The Best Stitched Outfits " Font-Bold="True" Font-Names="Pristina" Font-Size="40px" ForeColor="#FF33CC"></asp:Label></marquee>
          
            <br />
            <asp:Image ID="Image7" runat="server"  ImageUrl="~/home/h8.jpg" Height="336px" Width="781px" BorderStyle="Solid" BorderColor="#FF33CC"/>
            <asp:Image ID="Image14" runat="server"  ImageUrl="~/home/h11.jpg" Height="336px" Width="469px" BorderStyle="Solid" CssClass="auto-style4" BorderColor="#FF3399"/>
          
                 <br />
            <br />
          
            <marquee scrollamount="5"> <asp:Label ID="Label5" runat="server" Text="The Best Ocassional Looks Are Been Provided" Font-Bold="True" Font-Names="Pristina" Font-Size="40px" ForeColor="#FF33CC"></asp:Label></marquee>
          
                 <br />
            <asp:Image ID="Image8" runat="server"  ImageUrl="~/home/h9.jpg" Height="336px" Width="427px" BorderStyle="Solid" BorderColor="#FF33CC"/>
            <asp:Image ID="Image9" runat="server"  ImageUrl="~/home/dress3.jpg" Height="336px" Width="482px" BorderStyle="Solid" BorderColor="#FF33CC"/>
            <asp:Image ID="Image13" runat="server"  ImageUrl="~/home/dress6.jpg" Height="336px" Width="346px" BorderColor="#FF33CC" BorderStyle="Solid"/>
            <br />
            <br />
        </div>  
        
            
            
        
  </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    


    <style type="text/css">
       
        
        .auto-style1 {
            z-index: 1;
            left: 4px;
            top: 12px;
            position: relative;
            height: 187px;
            width: 248px;
        }
        h2 {
            font-family: "Baskerville Old Face";
            font-size: xx-large;
            color: #009900;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            margin-left: 0px;
            margin-top: 0px;
        }
        </style>
</asp:Content>

