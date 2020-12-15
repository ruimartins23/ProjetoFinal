<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjetoFinal.WebForms.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <asp:Login ID="Login2" FailureText="Password/Nome errado." RememberMeText="Lembrar dos dados" runat="server"></asp:Login>
</asp:Content>
