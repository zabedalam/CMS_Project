<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="indoor.aspx.cs" Inherits="CMS_Project.Indoor" Theme="Theme_Indoor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterIndoor" runat="server">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:Label ID="LabelMessage" runat="server" Text="Result"></asp:Label>
    
</asp:Content>

            
        <asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <asp:Repeater ID="RepeaterJokes" runat="server" DataSourceID="SqlDataSource2">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMS_DATABASEConnectionString4 %>" SelectCommand="SELECT [Jokes_text], [Selection_Id] FROM [Jokes] where Selection_Id=1"></asp:SqlDataSource>
</asp:Content>


            
        