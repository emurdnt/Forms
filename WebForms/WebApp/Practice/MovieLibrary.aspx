<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovieLibrary.aspx.cs" Inherits="WebApp.Practice.MovieLibrary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
        <h1>Movie Library</h1>
          <p>Please fill in the form below and click submit. After submitting the form, you will receive an email with a link to confirm your registration. 
              By clicking that link, you will complete the registration process.
          </p>       
 </div>
    <fieldset>
    <asp:Label ID="Label1" runat="server" Text="Title" AssociatedControlID="MovieTitle"></asp:Label>
    <asp:TextBox ID="MovieTitle" runat="server"></asp:TextBox>
        <br />
    <asp:Label ID="Label2" runat="server" Text="Year" AssociatedControlID="Year"></asp:Label>
    <asp:TextBox ID="Year" runat="server"></asp:TextBox>
     
        <br />
    <asp:Label ID="Label3" runat="server" AssociatedControlID="Media">Media</asp:Label> <br />
    <asp:RadioButtonList ID="Media" runat="server" RepeatLayout="Flow">
        <asp:ListItem Text="DVD" />
        <asp:ListItem Text="VHS" />
        <asp:ListItem Text="File" />
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="Label4" runat="server" AssociatedControlID="Rating"> Rating</asp:Label><br />
    <asp:RadioButtonList ID="Rating" runat="server" RepeatLayout="Flow">
        <asp:ListItem Text="General (G)" />
        <asp:ListItem Text="Parental Guidance (PG)" />
        <asp:ListItem Text="14A" />
        <asp:ListItem Text="18A" />
        <asp:ListItem Text="Restricted (R)" />
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="Label5" runat="server" AssociatedControlID="Review"> Review</asp:Label>
    <asp:DropDownList ID="Review" runat="server">
        <asp:ListItem Text="1 Star" />
        <asp:ListItem Text="2 Stars" />
        <asp:ListItem Text="3 Stars" />
    </asp:DropDownList>
        <br />
    <asp:Label ID="Label6" runat="server" Text="ISBN" AssociatedControlID="Barcode"></asp:Label>
    <asp:TextBox ID="Barcode" runat="server"></asp:TextBox>
    <asp:Button ID="Search" runat="server" Text="Search Online"/>
        <br />
    <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="Add to Library" />

    </fieldset>
  <div>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
      <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" display="None" runat="server" ErrorMessage="Title is required." ControlToValidate="MovieTitle"></asp:RequiredFieldValidator>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ErrorMessage="Year is required." ControlToValidate="Year"></asp:RequiredFieldValidator>
      <asp:RangeValidator ID="RangeValidator1" Display="None" runat="server" ErrorMessage="Year must be from 1900 to current." ControlToValidate="Year" MinimumValue="1900" MaximumValue="2018"></asp:RangeValidator>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="None" runat="server" ErrorMessage="Media is required." ControlToValidate="Media" ></asp:RequiredFieldValidator>
  </div>
    <asp:GridView ID="MovieGridView" runat="server" EmptyDataText="No movies to display."></asp:GridView>

</asp:Content>

