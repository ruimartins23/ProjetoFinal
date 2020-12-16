<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalArea.aspx.cs" Inherits="ProjetoFinal.WebForms.PersonalArea" %>
<%@ Import Namespace="ClassLibrary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Receitas favoritas:"></asp:Label>
 <% foreach (Receita recipe in favRec) %>
            <% { %>
            <div class="my-2">
                <div class="toast-body">
                    <%: recipe.Nome %>
                </div>
                <div class="toast-header">
                    <small><%: recipe.Categoria %></small>
                </div>
            </div>
            <% } %>
</asp:Content>
