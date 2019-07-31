<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1_Beale.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="BrandButton" runat="server" Text="Create Brand" OnClick="BrandButton_Click" />
    <asp:Button ID="CategoryButton" runat="server" Text="Create Category" OnClick="CategoryButton_Click" />
    <asp:Button ID="ItemButton" runat="server" Text="Create Item" OnClick="ItemButton_Click" />
    <p>
    </p>
</asp:Content>
