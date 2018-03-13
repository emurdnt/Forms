<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovieLibrary.aspx.cs" Inherits="WebApp.Practice.MovieLibrary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
        <h1>Movie Library</h1>
          <p>Please fill in the form below and click submit. After submitting the form, you will receive an email with a link to confirm your registration. 
              By clicking that link, you will complete the registration process.
          </p>       
    </div>
     <asp:Label ID="Label1" runat="server" Text="Title" AssociatedControlID="MovieTitle"></asp:Label>
    <asp:TextBox ID="MovieTitle" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Year" AssociatedControlID="Year"></asp:Label>
    <asp:TextBox ID="Year" runat="server"></asp:TextBox>
 <%--    
    <div>

    <asp:Label ID="Label3" runat="server" Text="Media" AssociatedControlID="Media"></asp:Label>
    <asp:RadioButtonList runat="server"></asp:RadioButtonList>
    </div>--%>
  









</asp:Content>

