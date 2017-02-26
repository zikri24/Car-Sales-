<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CarSales.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div id= "search">
        <div id="searchHeading">
            <h3> Search For Your Car</h3>
        </div>

                <div id = "searchByMake">
                    <h2 class="searchBy">Search By Make & Model</h2>
                    <asp:Label ID="Label1" runat="server" Text="Make" ForeColor="#666666" ></asp:Label>
                    <asp:DropDownList ID="DropDownListMake" runat="server" ForeColor="#666666" 
                        AutoPostBack="True" 
                        onselectedindexchanged="DropDownListMake_SelectedIndexChanged" >
                    </asp:DropDownList>
                    <br />
             
                    <asp:Label ID="Label3" runat="server" Text="Model"></asp:Label>
                    <asp:DropDownList ID="ddlModel" runat="server" >
                    </asp:DropDownList>
                    <br />

                    <asp:Label ID="Label4" runat="server" Text="Price Min" Width="120px"></asp:Label>
                    <asp:DropDownList ID="ddlMinPrice" runat="server" Width="81px" Height="23px">
                        <asp:ListItem>------------</asp:ListItem>
                        <asp:ListItem>1000.00</asp:ListItem>
                        <asp:ListItem>1500.00</asp:ListItem>
                        <asp:ListItem>2000.00</asp:ListItem>
                        <asp:ListItem>2500.00</asp:ListItem>
                        <asp:ListItem>3000.00</asp:ListItem>
                        <asp:ListItem>3500.00</asp:ListItem>
                        <asp:ListItem>4000.00</asp:ListItem>
                        <asp:ListItem>4500.00</asp:ListItem>
                        <asp:ListItem>5000.00</asp:ListItem>
                        <asp:ListItem>5500.00</asp:ListItem>
                        <asp:ListItem>6000.00</asp:ListItem>
                        <asp:ListItem>6500.00</asp:ListItem>
                        <asp:ListItem>7000.00</asp:ListItem>
                        <asp:ListItem>7500.00</asp:ListItem>
                        <asp:ListItem>8000.00</asp:ListItem>
                        <asp:ListItem>8500.00</asp:ListItem>
                        <asp:ListItem>9000.00</asp:ListItem>
                        <asp:ListItem>9500.00</asp:ListItem>
                        <asp:ListItem>10000.00</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" Text="Max" Width="35px"></asp:Label>
                    <asp:DropDownList ID="ddlMaxPrice" runat="server" Width="81px">
                        <asp:ListItem>------------</asp:ListItem>
                        <asp:ListItem>1500.00</asp:ListItem>
                        <asp:ListItem>2000.00</asp:ListItem>
                        <asp:ListItem>2500.00</asp:ListItem>
                        <asp:ListItem>3000.00</asp:ListItem>
                        <asp:ListItem>3500.00</asp:ListItem>
                        <asp:ListItem>4000.00</asp:ListItem>
                        <asp:ListItem>4500.00</asp:ListItem>
                        <asp:ListItem>5000.00</asp:ListItem>
                        <asp:ListItem>5500.00</asp:ListItem>
                        <asp:ListItem>6000.00</asp:ListItem>
                        <asp:ListItem>6500.00</asp:ListItem>
                        <asp:ListItem>7000.00</asp:ListItem>
                        <asp:ListItem>7500.00</asp:ListItem>
                        <asp:ListItem>8000.00</asp:ListItem>
                        <asp:ListItem>8500.00</asp:ListItem>
                        <asp:ListItem>9000.00</asp:ListItem>
                        <asp:ListItem>9500.00</asp:ListItem>
                        <asp:ListItem>10000.00</asp:ListItem>
                        <asp:ListItem>15000.00</asp:ListItem>
                        <asp:ListItem>20000.00</asp:ListItem>
                        <asp:ListItem>25000.00</asp:ListItem>
                        <asp:ListItem>30000.00</asp:ListItem>
                        <asp:ListItem>35000.00</asp:ListItem>
                        <asp:ListItem>40000.00</asp:ListItem>
                        <asp:ListItem>45000.00</asp:ListItem>
                        <asp:ListItem>50000.00</asp:ListItem>
                        <asp:ListItem>55000.00</asp:ListItem>
                        <asp:ListItem>60000.00</asp:ListItem>
                        <asp:ListItem>65000.00</asp:ListItem>
                        <asp:ListItem>70000.00</asp:ListItem>
                        <asp:ListItem>75000.00</asp:ListItem>
                        <asp:ListItem>80000.00</asp:ListItem>
                        <asp:ListItem>85000.00</asp:ListItem>
                        <asp:ListItem>90000.00</asp:ListItem>
                        <asp:ListItem>95000.00</asp:ListItem>
                        <asp:ListItem>100000.00</asp:ListItem>
                        <asp:ListItem> </asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    <asp:Label ID="Label6" runat="server" Text="Location"></asp:Label>
                    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                    <br />
                    &nbsp;<br />

                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </div>

             <div id ="searchByType">
                <div id="type">
                    <h2 class="searchBy"> Search By Body Type</h2>
                    <asp:RadioButtonList ID="RdbtnType" runat="server" ForeColor="#666666">
                    </asp:RadioButtonList>
                    <br />
                  </div>
                 <div id="searchButtn">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" />
               </div>
             </div>
               
               

    </div>
</asp:Content>
