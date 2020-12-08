<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Employees.Membership.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <div class="jumbotron">
        <h1 class="display-4">Welcome to Employees</h1>
        <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
        <hr class="my-4">
        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
        <a class="btn btn-primary btn-lg" href="~/Accounts/Login.aspx" runat="server" role="button">Login</a>
        <a class="btn btn-primary btn-lg" href="~/Accounts/Register.aspx" runat="server" role="button">Register</a>
    </div>
    <div>
        <div class="row">
            <div class="col">
                <h1>Teste1</h1>
                
            </div>
            <div class="col">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:LoginView ID="LoginView1" runat="server">
                    <AnonymousTemplate>
                        <h1>Register</h1>

                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        <%-- ver LABEL --%>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptPlaceHolder" runat="server">
</asp:Content>
