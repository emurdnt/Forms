<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CDLibrary.aspx.cs" Inherits="WebApp.Practice.CDLibrary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server"> 
  
    <div>
        <h1>CD Library</h1>
          <p>Fill the form below to add a music CD to your personal library.</p>
    </div>
    <div>
    
        <asp:Label ID="Label1" runat="server" AssociatedControlID="Barcode"> ISBN (Barcode)</asp:Label>
        <asp:TextBox ID="Barcode" runat="server"></asp:TextBox> <br />
        <asp:Button ID="Button1" runat="server" Text="Search Online for CD" />
        <br />

        <asp:Label ID="Label2" runat="server" Text="Label" AssociatedControlID="CDTitle">Title</asp:Label>
        <asp:TextBox ID="CDTitle" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label3" runat="server" Text="Label" AssociatedControlID="Artist">Artist</asp:Label>
        <asp:TextBox ID="Artist" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label4" runat="server" Text="Label" AssociatedControlID="Year">Year</asp:Label>
        <asp:TextBox ID="Year" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label5" runat="server" Text="Label" AssociatedControlID="NumberOfTracks"> Number of Tracks </asp:Label>
        <asp:TextBox ID="NumberOfTracks" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Add to Library" />
        <br />
    </div>
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" CssClass="alert alert-warning alert-dismissible" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" runat="server" ErrorMessage="Title is required." ControlToValidate="CDTitle"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ErrorMessage="Year is required" ControlToValidate="Year"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Year is out of range. Must be from 1900 - current year." ControlToValidate="Year" MinimumValue="1900" MaximumValue="2018"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="None" runat="server" ErrorMessage="Number of tracks is required." ControlToValidate="NumberOfTracks"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" Display="None" ErrorMessage="Number of tracks must be greater than zero." ControlToValidate="NumberOfTracks" MinimumValue="1" MaximumValue="1000"></asp:RangeValidator>
   </div>

    <asp:GridView ID="MusicGridView" runat="server" EmptyDataText="No music."></asp:GridView>
</asp:Content>