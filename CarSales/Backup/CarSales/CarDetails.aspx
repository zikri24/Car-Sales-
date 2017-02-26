<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CarDetails.aspx.cs" Inherits="CarSales.User.CarDetails1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div id ="repeater">
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

            <asp:Image ID="Image1" runat="server" Height="100px" Width="150px" ImageUrl='<%# Eval("LinkToFile") %>' AlternateText="No Image Available" /></a>
 
            </ItemTemplate>
            </asp:Repeater>
         </div>
         <div id = "gridDetails">
             <asp:Label ID="Label1" runat="server" Text="Make"></asp:Label>
             <asp:Label ID="lblMake" runat="server" ></asp:Label><br />

             <asp:Label ID="Label3" runat="server" Text="Model"></asp:Label>
             <asp:Label ID="lblModel" runat="server" ></asp:Label><br />

             <asp:Label ID="Label5" runat="server" Text="Body Type"></asp:Label>
             <asp:Label ID="lblType" runat="server" ></asp:Label><br />

             <asp:Label ID="Label7" runat="server" Text="Transmission"></asp:Label>
             <asp:Label ID="lblTransmission" runat="server" ></asp:Label><br />

             <asp:Label ID="Label9" runat="server" Text="Kilometers"></asp:Label>
             <asp:Label ID="lblKilometers" runat="server"></asp:Label><br />

             <asp:Label ID="Label2" runat="server" Text="Color"></asp:Label>
             <asp:Label ID="lblColor" runat="server" ></asp:Label><br />

             <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
             <asp:Label ID="lblPrice" runat="server" ></asp:Label><br />

             <asp:Button ID="btnContactSeller" runat="server" Text="Contact Seller" 
                 onclick="btnContactSeller_Click" />
             &nbsp; &nbsp;
             <asp:Button ID="btnSearch" runat="server" Text="Back to Search" 
                 onclick="btnSearch_Click" /> 
               &nbsp; &nbsp;
             <asp:Button ID="btnOrder" runat="server" Text="Order" 
                 onclick="btnOrder_Click" />
             <br />
             <br />
             <asp:Label ID="lblInfo" runat="server" ></asp:Label>
             <br />
         </div>
</asp:Content>
