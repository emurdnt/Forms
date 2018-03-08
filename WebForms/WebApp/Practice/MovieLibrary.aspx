<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server"> 
   
    <div class="col-md-12">
        <h1>Movie Library</h1>
          <p>Fill the form below to add information on the movie for your movie</p>
    </div>
    <div class="col-md-12">
        <fieldset class="form-horizontal">
        <asp:Label ID="Label1" runat="server" AssociatedControlID="Barcode"> ISBN (Barcode)</asp:Label>
        <asp:TextBox ID="Barcode" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search Online for CD" />

        <asp:Label ID="Label2" runat="server" Text="Label" AssociatedControlID="Title">Title</asp:Label>
        <asp:TextBox ID="Title" runat="server"></asp:TextBox>


        <asp:Label ID="Label3" runat="server" Text="Label" AssociatedControlID="Artist">Artist</asp:Label>
        <asp:TextBox ID="Artist" runat="server"></asp:TextBox>

        <asp:Label ID="Label4" runat="server" Text="Label" AssociatedControlID="Year">Year</asp:Label>
        <asp:TextBox ID="Year" runat="server"></asp:TextBox>

        <asp:Label ID="Label5" runat="server" Text="Label" AssociatedControlID="NumberOfTracks"> Number of Tracks </asp:Label>
        <asp:TextBox ID="NumberOfTracks" runat="server"></asp:TextBox>


        <asp:Button ID="Button2" runat="server" Text="Add to Library" />
        </fieldset>
        


    </div>
      
</asp:Content>
