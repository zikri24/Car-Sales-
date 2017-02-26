<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CarSales.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id ="container">
<div id= "validation">
     <asp:ValidationSummary ID="ValidationLoginSummary" runat="server" 
        DisplayMode="List" ForeColor="Red" />
        </div>
    <div id="login">
    
        <div id="loginHeader">
         <h3>Login to your Account</h3>
        </div>
    <div id="loginControls">
        <asp:Label ID="Label1" runat="server" Text="Username"> </asp:Label>
        <asp:TextBox class = "textBox" ID="txtUsername" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="LoginRequiredFieldValidator1" runat="server" 
            ControlToValidate="txtUsername" ErrorMessage="Please enter your Username" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"> </asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtPassword" ErrorMessage="Please enter your Passwrd" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />

        <asp:Button class = "login" ID="btnLogin" runat="server" Text="Login" 
            onclick="btnLogin_Click1" Font-Bold="True" />

        <asp:LinkButton class = "newUser" ID="LinkbtnNewUser" runat="server" 
            onclick="LinkbtnNewUser_Click" ForeColor="#007ACC" Font-Italic="False" 
            Font-Names="Times New Roman" Font-Size="Medium">Register</asp:LinkButton>
        <br />
        <asp:Label ID="lblInfo" runat="server" ForeColor="Red" ></asp:Label>
        
        </div>
</div>
</div>
</asp:Content>
