<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Female_Measurement.aspx.cs" Inherits="MyForms.Female_Measurement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            margin-left: 0px;
            position: absolute;
            top: 293px;
            left: 491px;
            z-index: 1;
            width: 563px;
            height: 515px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
   

    <div style="background-color:#E9E9E9">
        <h1 style="color: #003366">
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Pristina" Font-Size="50px" ForeColor="#D33177" Text="Female Measurement"></asp:Label>
        </h1>
&nbsp;&nbsp;<br />
        &nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Length of Top/Kurti" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Length" ForeColor="Red" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
         
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter valid Number" MaximumValue="60" MinimumValue="20" Type="Integer" ControlToValidate="TextBox1" ForeColor="Blue" Display="Dynamic"></asp:RangeValidator>
         
        <br />         
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Size of Bust/Chest(in)" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <asp:DropDownList ID="FemaleSize" runat="server" >
            <asp:ListItem>35.8-37</asp:ListItem>
            <asp:ListItem>34.6-35.8</asp:ListItem>
            <asp:ListItem>33.5-34.6</asp:ListItem>
            <asp:ListItem>37-39.0</asp:ListItem>
            <asp:ListItem>39.06-40.6</asp:ListItem>
            <asp:ListItem>40.6-42.1</asp:ListItem>
            <asp:ListItem>42.1-44.1</asp:ListItem>
        </asp:DropDownList>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Select Size" ForeColor="Red" ControlToValidate="FemaleSize"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Size of Shoulders(in)" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>

        <br />
        &nbsp;&nbsp;
         &nbsp;
               
              

        <asp:DropDownList ID="FemaleShoulder" runat="server">
            <asp:ListItem>14.2-15.0</asp:ListItem>
            <asp:ListItem>13.8-14.2</asp:ListItem>
            <asp:ListItem>13.4-13.8</asp:ListItem>
            <asp:ListItem>15.0-15.7</asp:ListItem>
            <asp:ListItem>15.7-16.5</asp:ListItem>
            <asp:ListItem>16.5-17.3</asp:ListItem>
            <asp:ListItem>17.3-18.1</asp:ListItem>
        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Select Size" ForeColor="Red" ControlToValidate="FemaleShoulder"></asp:RequiredFieldValidator>

        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Size Standard:" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="411px" RepeatDirection="Horizontal" Height="23px">
            <asp:ListItem>S</asp:ListItem>
            <asp:ListItem>XS</asp:ListItem>
            <asp:ListItem>XXS</asp:ListItem>
            <asp:ListItem>M</asp:ListItem>
            <asp:ListItem>L</asp:ListItem>
            <asp:ListItem>XL</asp:ListItem>
            <asp:ListItem>XXL</asp:ListItem>
        </asp:RadioButtonList>

    <asp:Image ID="Image3" runat="server"  ImageUrl="~/FemaleT.jpg"  CssClass="auto-style5" BorderStyle="Solid" BorderColor="#FF33CC" />

        <br />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Select Standard" ForeColor="Red" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Length of Pajama/Salwar:" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>

   

        <br />
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter Length " ForeColor="Red" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
         
        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Please enter valid Number" MaximumValue="60" MinimumValue="20" Type="Integer" ControlToValidate="TextBox2" ForeColor="Blue" Display="Dynamic"></asp:RangeValidator>
         
        <br /><br />
        &nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="length of Waist" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label><br />
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Enter Length" ForeColor="Red" ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
         
        <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Please enter valid Number" MaximumValue="60" MinimumValue="20" Type="Integer" ControlToValidate="TextBox3" ForeColor="Blue" Display="Dynamic"></asp:RangeValidator>
         
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Special Request:" Font-Bold="True" Font-Names="century" Font-Size="Large"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Fitting:" Font-Bold="True" Font-Names="century"></asp:Label>&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
             <asp:ListItem></asp:ListItem>
            <asp:ListItem>Loose</asp:ListItem>
            <asp:ListItem>Tight</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
         
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please Select Fitting" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
         
        <br />
         
        <br />
         
        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" Font-Names="Century" Font-Size="Large"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" Font-Bold="True" Font-Names="Century" Font-Size="Large" Width="102px"   />       
         
    </div>   
 
</asp:Content>
