<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CarSales.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="adminPage">
    <asp:Label ID="lblUsersCount" runat="server" Width="50px" ></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Users" Width="80px"></asp:Label>
    <asp:Button ID="btnAllUsers" runat="server" Text="ShowAll" Width="100px" 
        onclick="btnAllUsers_Click" /><br />
    <asp:Label ID="lblCarsCount" runat="server" Width="50px"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Cars Online" Width="80px"></asp:Label>
    <asp:Button ID="btnAllCars" runat="server" Text="Show All" Width="100px" 
        onclick="btnAllCars_Click" /><br />
    <asp:Label ID="lblOrderHistory" runat="server" Width="50px" ></asp:Label>
    <asp:Label ID="Label3" runat="server" Text="Orders" Width="80px"></asp:Label>
    <asp:Button ID="btnOrderHistory" runat="server" Text="Order History" 
        onclick="btnOrderHistory_Click" Width="100px" />
    <br />
    <br />

    <br />
</div>

</asp:Content>
