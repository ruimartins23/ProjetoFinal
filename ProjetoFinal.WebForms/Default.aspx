<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoFinal.WebForms._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Receitas Yummy</h1>
        <p class="lead">Experimente uma das nossas muitas receitas, para todos os gostos e momentos!</p>
        <p><a href="Register.aspx" class="btn btn-primary btn-lg">Registar</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Já registado?</h2>
            <p>Faça aqui o login para procurar, classificar, comentar, ou inserir as suas próprias receitas!</p>
                <a class="btn btn-default" href="<%--COLOCAR AQUI PÁGINA DE LOGIN--%>">Login</a>
        </div>
        <div class="col-md-4">
            <h2>Procura algo em especial?</h2>
            <p>
                Procure aqui a receita certa para a sua refeição!
            </p>
            <p>
                <a class="btn btn-default" href="PesquisarReceita">Pesquisar receitas</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Área Péssoal</h2>
            <p>
                Aceda aqui á sua área pessoal
            </p>
                <a class="btn btn-default" href="<%--COLOCAR AQUI PÁGINA DE ÁREA PESSOAL--%>">Área Pessoal</a>
        </div>
    </div>

</asp:Content>
