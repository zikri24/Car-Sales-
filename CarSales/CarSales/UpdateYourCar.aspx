<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateYourCar.aspx.cs" Inherits="CarSales.UpdateYourCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id = "container">
<div id="upload">
    <div id="uploadTitle">
    <h3>Enter your Car details</h3>
    </div>
    <div id="uploadCar">

            
            <br />


            <asp:Label ID="Label1" runat="server" Text="Type" Width="120px"></asp:Label>
            <asp:DropDownList ID="ddlType" runat="server" Height="23px" Width="158px"   Font-Bold="True">
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Please Select Car Type" ControlToValidate="ddlType" 
                ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="Label2" runat="server" Text="Make" Width="120px"></asp:Label>
            <asp:TextBox ID="txtMake" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Enter Car Make" ControlToValidate="txtMake" ForeColor="Red">*</asp:RequiredFieldValidator>

            <asp:Label ID="Label3" runat="server" Text="Model" Width="120px"></asp:Label>
            <asp:TextBox ID="txtModel" runat="server" Width="150px"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Year" Width="120px"></asp:Label>
            <asp:TextBox ID="txtYear" runat="server" Width="150px"></asp:TextBox>

            <asp:Label ID="Label5" runat="server" Text="Color" Width="120px"></asp:Label>
            <asp:TextBox ID="txtColor" runat="server" Width="150px"></asp:TextBox>

            <asp:Label ID="Label6" runat="server" Text="Killometers" Width="120px"></asp:Label>
            <asp:TextBox ID="txtKillometers" runat="server" Width="150px"></asp:TextBox>

            <asp:Label ID="Label7" runat="server" Text="Transmission" Width="120px"></asp:Label>
            <asp:DropDownList ID="ddlTransmission" runat="server" Height="23px" Width="158px" >
            </asp:DropDownList>

            <asp:Label ID="Label8" runat="server" Text="Condition" Width="120px"></asp:Label>
            <asp:DropDownList ID="ddlCondition" runat="server" Height="23px" Width="158px" >
            </asp:DropDownList>

            <asp:Label ID="Label9" runat="server" Text="Price" Width="120px"></asp:Label>
            <asp:TextBox ID="txtPrice" runat="server" Width="150px"></asp:TextBox>

            <asp:Label ID="Label10" runat="server" Text="Location" Width="120px"></asp:Label>
            <asp:TextBox ID="txtLocation" runat="server" Width="150px"></asp:TextBox>
            
             <br />
             <br /><br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" onclick="btnUpdate_Click" />
            <br />
            <br />
            <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
       </div>
       </div>
    </div>
</asp:Content>
