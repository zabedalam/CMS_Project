<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="outdoor.aspx.cs" Inherits="CMS_Project.WebForm1" Theme="Theme_Outdoor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterOutdoor" runat="server">
        <HeaderTemplate>
                <table class="table">
                    <tr>
                        <td class="header">Product Name</td>
                        <td class="header">Price</td>
                        <td class="header">Picture</td>
                    </tr>
                
            </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="item"><%#Eval("Item_name") %></td>
                        <td class="item"><%#Eval("Item_price") %></td>
                        <td class="item"><img src="Images/<%#Eval("Item_image") %>" alt="Indoor"/></td>

                    </tr>

                </ItemTemplate>
                
                <FooterTemplate>
                    </table>
                </FooterTemplate>
    </asp:Repeater>
    <asp:Label ID="LabelMessage" runat="server" Text="Result"></asp:Label>
    <%--<div class="container">
        <div class="item"><img src="Images/c2.jpg" runat="server" /></div>
        <div class="item"><img src="Images/f2.jpg" runat="server" /></div>
        <div class="item"><img src="Images/f1.jpg" runat="server" /></div>
    </div>--%>
</asp:Content>