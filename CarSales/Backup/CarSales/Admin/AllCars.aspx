<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AllCars.aspx.cs" Inherits="CarSales.AllCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="adminGrid">
    <asp:GridView ID="GrdViewAllCars" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CarID" HeaderText="CarID" />
            <asp:BoundField DataField="Type" HeaderText="Body Type" />
            <asp:BoundField DataField="Make" HeaderText="Make" />
            <asp:BoundField DataField="Model" HeaderText="Model" />
            <asp:BoundField DataField="Year" HeaderText="Year" />
            <asp:BoundField DataField="Color" HeaderText="Color" />
            <asp:BoundField DataField="Killometers" HeaderText="Kilometers" />
            <asp:BoundField DataField="Transmission" HeaderText="Transmission" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
       
    </asp:GridView>
     </div>
</asp:Content>
