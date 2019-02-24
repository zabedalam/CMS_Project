<%@ Page Title="" Language="C#" MasterPageFile="~/MasterpageCMS.Master" AutoEventWireup="true" CodeBehind="AddSportsItem.aspx.cs" Inherits="CMS_Project.AddSportsItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Add New Sports Item</h3>
    <table cellspacing="15" class="coffeeTable">
        <tr>
            <td style="width: 80px">
                <b>Name:</b>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 80px">
                <b>Selection Id:</b>
            </td>
            <td>
                <asp:TextBox ID="SelectionId" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 80px">
                <b>Price:</b>
            </td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <%--<tr>
            <td style="width: 80px">
                <b>Roast:</b>
            </td>
            <td>
                <asp:TextBox ID="txtRoast" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>--%>        <%--<tr>
            <td style="width: 80px">
                <b>Country:</b>
            </td>
            <td>
                <asp:TextBox ID="txtCountry" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>--%>
        <tr>
            <td style="width: 80px">
                <b>Image:</b>
            </td>
            <td>
                <asp:DropDownList ID="ddlImage" runat="server" Width="300px">
                </asp:DropDownList>
                <br/>
                <asp:FileUpload ID="FileUpload1" runat="server" /> 
                <asp:Button ID="btnUploadImage" runat="server" Text="Upload Image" 
                    onclick="btnUploadImage_Click" CausesValidation="False" /> 
            </td>
            
        </tr>
        <%--<tr>
            <td style="width: 80px">
                <b>Review:</b>
            </td>
            <td>
                <asp:TextBox ID="txtReview" runat="server" Height="98px" TextMode="MultiLine" Width="332px"></asp:TextBox>
            </td>
        </tr>--%>
    </table>
    <asp:Label ID="lblResult" runat="server" Text="Result"></asp:Label>
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" Width="96px" />
    
</asp:Content>
