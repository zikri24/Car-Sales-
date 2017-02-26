<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CarSales.User.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="contactUs">
<h2>
Car Sales
</h2>
<h4>
504 791-801 Anzac Parade <br />
Maroubra <br />
NSW 2035
</h4>

<h4>
Email : carSales@gmail.com
</h4>

<h4>
Tel : 0406 464 857
</h4>

<h4>
Mobile : 0406 464 857
</h4>
Name<br />
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
    Email<br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /><br />
    Message<br />
    <asp:TextBox ID="txtMessage" runat="server" Height="134px" TextMode="MultiLine" 
        Width="197px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Send" 
        onclick="btnSubmit_Click" />
    <br />
    <br />
    <br />
    <asp:Label ID="lblResult" runat="server" Width="214px" ></asp:Label>
    <br />
    <br />
</div>
</asp:Content>
