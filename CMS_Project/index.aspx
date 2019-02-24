<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CMS_Project.index" Theme="Theme_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="item"><img src="Images/b2.jpg" runat="server" /></div>
        <div class="item"><img src="Images/f2.jpg" runat="server" /></div>
        <div class="item"><img src="Images/h1.jpg" runat="server" /></div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
                <table class="table">
                    <tr>
                        <td class="header">Jokes</td>
                        
                    </tr>
                
            </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="item"><%#Eval("Jokes_text") %></td>
                    </tr>  
                </ItemTemplate>
                
                <FooterTemplate>
                    </table>
                </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMS_DATABASEConnectionString5 %>" SelectCommand="SELECT [Jokes_text],[Jokes_Id] FROM [Jokes] where Jokes_Id=1003"></asp:SqlDataSource>
</asp:Content>

