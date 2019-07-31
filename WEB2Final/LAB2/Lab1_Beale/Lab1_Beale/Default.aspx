<%@ Page Title="" Language="C#" MasterPageFile="~/Defaut.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1_Beale.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <asp:Button ID="RatingButton" runat="server" OnClick="RatingButton_Click" Text="Ratings" />
    <asp:Button ID="CommentButton" runat="server" OnClick="CommentButton_Click" Text="Comments" />
</asp:Content>
