<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Showroom.aspx.cs" Inherits="CarSales.User.Showroom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #info
        {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Grid">
        <asp:GridView ID="GridViewResult" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="100%" 
            Width="65%" AllowPaging="True" PageSize="2" 
            onrowcommand="GridViewResult_RowCommand" 
           
            DataKeyNames="CarID" 
            onpageindexchanging="GridViewResult_PageIndexChanging" 
            style="margin-right: 2px" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                   
                    <div id= "container">
                    <div id = "image">
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("LinkToFile") %>' 
                            Height="158px" Width="227px" /><br />
                        <asp:Label ID="Label1" runat="server" Text="Price $ " Height="26px"></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
                        <asp:Label ID="Label2" runat="server" Text="Kilometers: "></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("Killometers") %>'></asp:Label><br />

                        </div>
                        <div id = "info">                            
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Make") %>'></asp:Label><br />                           
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Model") %>'></asp:Label><br />                           
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Type") %>'></asp:Label><br />                           
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Transmission") %>'></asp:Label><br />
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#003399" CommandName="view" CommandArgument="<%#((GridViewRow) Container).RowIndex %>">View</asp:LinkButton>                           
                        
                        </div>
                        </div>
                    </ItemTemplate>
                    <FooterStyle BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" />
                    <HeaderStyle BackColor="#007ACC" />
                </asp:TemplateField>
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
    <asp:Label ID="lblInfo" runat="server" ></asp:Label>
</asp:Content>
