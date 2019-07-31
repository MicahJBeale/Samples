<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CreateItem.aspx.cs" Inherits="Lab1_Beale.Admin.CreateItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <p>
                 <asp:RequiredFieldValidator runat=server 
            ControlToValidate=ItemName
            ErrorMessage="An item name is required."> *
        </asp:RequiredFieldValidator>
Item Name:<asp:TextBox ID="ItemName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator runat=server 
            ControlToValidate="ItemName" 
            ErrorMessage="<br>Item name must be between 3-50 letters and/or numbers." 
            ValidationExpression="[a-zA-Z0-9 ]{3,50}" />
</p>
        <p>
             <asp:RequiredFieldValidator runat=server 
            ControlToValidate=ItemPrice
            ErrorMessage="A price is required."> *
        </asp:RequiredFieldValidator>
 Item Price:<asp:TextBox ID="ItemPrice" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RegularExpressionValidator runat=server 
            ControlToValidate="ItemPrice" 
            ErrorMessage="<br>Item Price must be between 1 and 10,000 numbers." 
            ValidationExpression="[0-9]{1,10000}" />
</p>
<p>
 Item Brand:<asp:DropDownList ID="BrandDropDown" runat="server">
    </asp:DropDownList>
    <asp:Button ID="EditBrand" runat="server" OnClick="EditBrand_Click" Text="Edit Brand" CausesValidation="False"/>
</p>
        <p>
 Item Category:<asp:DropDownList ID="DropDown" runat="server">
            </asp:DropDownList>
            <asp:Button ID="EditCategory" runat="server" OnClick="EditCategory_Click" Text="Edit Category" CausesValidation="False" />
</p>
<p>

    <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
    <asp:Button ID="CancelButton" runat="server" OnClick="CancelButton_Click" Text="Cancel" />
</p>
<p>
<asp:TextBox ID="Output" runat="server" Height="117px" ReadOnly="True" TextMode="MultiLine" Width="594px"></asp:TextBox>
</p>
        </div>
</asp:Content>
