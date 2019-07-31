<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditBrand.aspx.cs" Inherits="Lab1_Beale.Admin.EditBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <br />
       Change brand
<asp:Label ID="QueryOutput" runat="server"></asp:Label>
       &nbsp;to:
     <asp:RequiredFieldValidator runat=server 
            ControlToValidate=UserInput
            ErrorMessage="A Brand is required."> *
        </asp:RequiredFieldValidator>
<asp:TextBox ID="UserInput" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator runat=server 
            ControlToValidate="UserInput" 
            ErrorMessage="<br>Brand name must be between 3-50 letters and/or numbers." 
            ValidationExpression="[a-zA-Z0-9 ]{3,50}" />
<br />
<asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save Edit" />
<asp:Button ID="CancelButton" runat="server" OnClick="CancelButton_Click" Text="Cancel" />
<br />
<asp:Label ID="Output" runat="server"></asp:Label>
</asp:Content>
