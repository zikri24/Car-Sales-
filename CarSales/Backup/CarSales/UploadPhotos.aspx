<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UploadPhotos.aspx.cs" Inherits="CarSales.User.UploadPhotos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id = "uploadPhotos">
 <div id ="fileUpload">
 <br />
    <br />
    <asp:FileUpload ID="FileUploadPhoto1" runat="server" Width="266px" /><br />
    <br />
    <asp:Button ID="btnUploadPhotos" runat="server" Text="Upload" 
        onclick="btnUploadPhotos_Click" />
    <br />
    <br />
    <asp:Label ID="lblResult" runat="server" ></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#0033CC" 
        onclick="LinkButton3_Click">See Your Add</asp:LinkButton>
        </div>
</div>
</asp:Content>
