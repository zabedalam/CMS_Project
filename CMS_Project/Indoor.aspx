<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="indoor.aspx.cs" Inherits="CMS_Project.Indoor" Theme="Theme_Indoor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterIndoor" runat="server">
        <HeaderTemplate>
                <table class="mytable">
                    <tr>
                        <td class="myheader">Item_Id</td>
                        <td class="myheader">Item_name</td>
                        <td class="myheader">Item_price</td>
                        <%--<td class="myheader">Birthday</td>--%>
                        <td class="myheader">Item_image</td>
                    </tr>
                
            </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="myItem"><%#Eval("Item_Id") %></td>
                        <td class="myItem"><%#Eval("Item_name") %></td>
                        <td class="myItem"><%#Eval("Item_price") %></td>
                        <%--<td class="myItem"><%#Eval("Birthday","{0:dd-MM-yyyy}") %></td>--%>
                        <td class="myItem"><img src="Images/<%#Eval("Item_image") %>" alt="Indoor"/></td>

                    </tr>

                </ItemTemplate>
                
                <FooterTemplate>
                    </table>
                </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:Label ID="LabelMessage" runat="server" Text="Result"></asp:Label>
    <%--<td class="myheader">Birthday</td>--%><%#Eval("Item_Id") %>
    <br />
    <asp:Button ID="ButtonShow" runat="server" OnClick="ButtonShow_Click" Text="Show" />
</asp:Content>
