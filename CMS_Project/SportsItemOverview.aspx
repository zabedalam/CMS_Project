<%@ Page Title="" Language="C#" MasterPageFile="~/MasterpageCMS.Master" AutoEventWireup="true" CodeBehind="SportsItemOverview.aspx.cs" Inherits="CMS_Project.SportsItemOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Available Sports Items</h3>
<p>
    <asp:LinkButton ID="LinkButtonAddItem" runat="server" PostBackUrl="~/AddSportsItem.aspx">Add New Sports Item</asp:LinkButton>
</p>
    <p>
        <asp:GridView ID="GridViewSportsItemOverview" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Item_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="848px" CellSpacing="4" OnSelectedIndexChanged="GridViewSportsItemOverview_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" ReadOnly="True" SortExpression="Item_Id" />
                <asp:BoundField DataField="Item_name" HeaderText="Item_name" SortExpression="Item_name" />
                <asp:BoundField DataField="Item_price" HeaderText="Item_price" SortExpression="Item_price" />
                <asp:BoundField DataField="Item_image" HeaderText="Item_image" SortExpression="Item_image" />
                <asp:BoundField DataField="Selection_Id" HeaderText="Selection_Id" SortExpression="Selection_Id" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMS_DATABASEConnectionString2 %>" DeleteCommand="DELETE FROM [Item] WHERE [Item_Id] = @Item_Id" InsertCommand="INSERT INTO [Item] ([Item_Id], [Item_name], [Item_price], [Item_image], [Selection_Id]) VALUES (@Item_Id, @Item_name, @Item_price, @Item_image, @Selection_Id)" SelectCommand="SELECT * FROM [Item]" UpdateCommand="UPDATE [Item] SET [Item_name] = @Item_name, [Item_price] = @Item_price, [Item_image] = @Item_image, [Selection_Id] = @Selection_Id WHERE [Item_Id] = @Item_Id">
            <DeleteParameters>
                <asp:Parameter Name="Item_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Item_Id" Type="Int32" />
                <asp:Parameter Name="Item_name" Type="String" />
                <asp:Parameter Name="Item_price" Type="String" />
                <asp:Parameter Name="Item_image" Type="String" />
                <asp:Parameter Name="Selection_Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Item_name" Type="String" />
                <asp:Parameter Name="Item_price" Type="String" />
                <asp:Parameter Name="Item_image" Type="String" />
                <asp:Parameter Name="Selection_Id" Type="Int32" />
                <asp:Parameter Name="Item_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
