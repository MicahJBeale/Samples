<%@ Page Title="" Language="C#" MasterPageFile="~/Defaut.Master" AutoEventWireup="true" CodeBehind="ViewComments.aspx.cs" Inherits="Lab1_Beale.ViewComments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    &nbsp;<br />
    <asp:Button ID="Back" runat="server" OnClick="Back_Click" Text="Back" />
    <br />
        <br />
</asp:Content>
