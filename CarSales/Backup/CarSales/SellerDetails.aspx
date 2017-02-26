<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SellerDetails.aspx.cs" Inherits="CarSales.User.SellerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id = "sellerDetails">
<div id="uploadTitle">
    <h3>Seller's details</h3>
    </div>
    <div id ="sellerDetailsInfo">
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    <asp:Label ID="lblName" runat="server" ></asp:Label><br />

    <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
    <asp:Label ID="lblPhone" runat="server" ></asp:Label><br />

     <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <asp:Label ID="lblEmail" runat="server" ></asp:Label><br />
     

     <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
    <asp:Label ID="lblAddress" runat="server" ></asp:Label><br />
    </div>
</div>


</asp:Content>
