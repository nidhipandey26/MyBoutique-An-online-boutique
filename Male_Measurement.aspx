<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Male_Measurement.aspx.cs" Inherits="MyForms.Male_Measurement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        h1 {
            font-family: Pristina;
            font-size: 50px;
            color: #d33177;
        }
        
        .auto-style5 {
            margin-left: 0px;
            position: absolute;
            top: 309px;
            left: 514px;
            z-index: 1;
            width: 527px;
            height: 442px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div style="background-color:#E9E9E9">
        <h1 style="color: #d33177">&nbsp;Male Measurement&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h1>
        &nbsp;&nbsp;
                &nbsp;<br />
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
        &nbsp;<asp:DropDownList ID="MaleSize" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>35.8-37.0</asp:ListItem>
            <asp:ListItem>34.6-35.8</asp:ListItem>
            <asp:ListItem>33.5-34.6</asp:ListItem>
            <asp:ListItem>37.0-38.6</asp:ListItem>
            <asp:ListItem>38.6-40.2</asp:ListItem>
            <asp:ListItem>40.2-42.1</asp:ListItem>
            <asp:ListItem>42.1-44.1</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Select Size" ForeColor="Red" ControlToValidate="MaleSize"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Size of Shoulders(in)" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>

        <br />
        &nbsp;&nbsp;
         &nbsp;
               
        <asp:DropDownList ID="MaleShoulder" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>16.9-17.3</asp:ListItem>
            <asp:ListItem>16.5-16.9</asp:ListItem>
            <asp:ListItem>16.1-16.5</asp:ListItem>
            <asp:ListItem>17.3-17.7</asp:ListItem>
            <asp:ListItem>17.7-18.1</asp:ListItem>
            <asp:ListItem>18.1-18.5</asp:ListItem>
            <asp:ListItem>18.5-18.9</asp:ListItem>
        </asp:DropDownList>

      

        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Select Size" ForeColor="Red" ControlToValidate="MaleShoulder"></asp:RequiredFieldValidator>

        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Size Standard:" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>

    <asp:Image ID="Image3" runat="server"  ImageUrl="~/maleMeasurementPic.jpg"  CssClass="auto-style5" BorderStyle="Solid" BorderColor="#FF33CC" />

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

        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Select Standard" ForeColor="Red" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Length of Pajama/Salwar:" Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label><br />
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
        <asp:Label ID="Label6" runat="server" Text="Fitting:" Font-Bold="False" Font-Names="Century" Font-Size="Medium"></asp:Label>&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Loose</asp:ListItem>
            <asp:ListItem>Tight</asp:ListItem>
            
        </asp:DropDownList>
         
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please Select Fitting" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
         
        <br />
         
        <br />
         
        <br />

        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Names="Century" Font-Size="X-Large"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" Font-Names="Century" Font-Size="X-Large" Width="133px"   />       
         
    </div>   
    </asp:Content>


