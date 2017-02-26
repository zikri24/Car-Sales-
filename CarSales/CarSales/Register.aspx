<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarSales.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id ="container">
<div id= "validation">
    <asp:ValidationSummary ID="ValidationRegisterSummary" runat="server" 
        DisplayMode="List" ForeColor="Red" />
</div>

<div id="register">
<div id = "registerHeader">
<h3>Register</h3>
</div>
<div id="registerInfo">
<asp:Label ID="Label1" runat="server" Text="Username" Width="120px"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtUsername" ErrorMessage="Please enter a Username" 
        ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />

         <asp:Label ID="Label2" runat="server" Text="Password" Width="120px"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtPassword" ErrorMessage="Please enter a Password" 
        ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />

         <asp:Label ID="Label3" runat="server" Text="Email" Width="120px"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtEmail" ErrorMessage="Please enter your Email" 
        ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtEmail" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ErrorMessage="Please enter a valid Email"></asp:RegularExpressionValidator>
    <br />
        <asp:Button class="register" ID="btnRegister" runat="server" Text="Register" onclick="btnRegister_Click" />
        <br/>
         <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
        </div>
        
</div>
</div>

</asp:Content>
