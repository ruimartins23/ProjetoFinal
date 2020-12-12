<%@ Page Title="Inserir Receita" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertReceita.aspx.cs" Inherits="ProjetoFinal.WebForms.InsertReceita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox> 
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Ingredientes:"></asp:Label>
    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" DataSourceID="SqlDataSource1" DataTextField="Produto" DataValueField="Produto" Height="132px" Width="168px">
    </asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalCS %>" SelectCommand="spGetAllIngrediente" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Descrição:"></asp:Label>
    <asp:TextBox ID="descTxt" TextMode="MultiLine" runat="server"></asp:TextBox> 
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Categoria"></asp:Label>
    <asp:TextBox ID="catTxt" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Duração: (minutos)"></asp:Label>
    <asp:TextBox ID="durTxt" runat="server" TextMode="Time"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Dificuldade:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Text="Fácil" Value="0" />
        <asp:ListItem Text="Médio" Value="1" />
        <asp:ListItem Text="Díficil" Value="2" />
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Adicionar" OnClick="Button1_Click" />
</asp:Content>

