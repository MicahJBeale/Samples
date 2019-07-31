<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CreateCategory.aspx.cs" Inherits="Lab1_Beale.Admin.CreateCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <asp:RequiredFieldValidator runat=server 
            ControlToValidate=UserInput
            ErrorMessage="A Category is required."> *
        </asp:RequiredFieldValidator>
    Please enter a name for a category:<asp:TextBox ID="UserInput" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator runat=server 
            ControlToValidate="UserInput" 
            ErrorMessage="<br>Category name must be between 3-50 letters and/or numbers." 
            ValidationExpression="[a-zA-Z0-9]{3,50}" />
<br />
<asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
<asp:Button ID="CancelButton" runat="server" OnClick="CancelButton_Click" Text="Cancel" />
<br />
<asp:Label ID="Output" runat="server"></asp:Label>
</asp:Content>
