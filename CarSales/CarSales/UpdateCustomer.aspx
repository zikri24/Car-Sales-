<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateCustomer.aspx.cs" Inherits="CarSales.UpdateCustomer" Theme ="Blue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
 <div style="clear"></div>
    <div id ="updateCustomer">
     <div style="clear"></div>
         <div id="updateHeader">
            <h3>Edit Your Profile</h3>
         </div>
         <div id ="updateControls">
        <asp:Label ID="Label2" runat="server" Text="First Name: " Width="120px"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label3" runat="server" Text="Last Name: " Width="120px"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label4" runat="server" Text="Email: " Width="120px"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label5" runat="server" Text="Address: " Width="120px"></asp:Label>
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label6" runat="server" Text="City" Width="120px"></asp:Label>
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label7" runat="server" Text="State: " Width="120px"></asp:Label>
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label8" runat="server" Text="Post Code: " Width="120px"></asp:Label>
        <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label9" runat="server" Text="Phone: " Width="120px"></asp:Label>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
       
        <br /> <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" 
            onclick="btnUpdate_Click" Font-Bold="True" Width="80px" />
        <br /> 
             <asp:Label ID="lblInfo" runat="server"></asp:Label>
             <br /> 
              <br />
        </div>
       
      </div>
      
</div>
</asp:Content>
