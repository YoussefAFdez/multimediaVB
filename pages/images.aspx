<%@ Page Title="" Language="VB" MasterPageFile="~/Base.master" AutoEventWireup="false" CodeFile="images.aspx.vb" Inherits="Default2" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <title>Yuu Media - Imágenes</title>
</asp:Content>

<asp:Content ID="header" ContentPlaceHolderID="header" Runat="Server">

</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" Runat="Server">
    <h2>Test Imágenes</h2>
    <asp:GridView ID="gvImagenes" runat="server"></asp:GridView>
</asp:Content>

