<%@ Page Title="Receitas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllReceitas.aspx.cs" Inherits="ProjetoFinal.WebForms.AllReceitas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="476px" RepeatColumns="3" Width="756px" OnItemCommand="DataList1_ItemCommand" DataKeyField="Receita_id">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td class="text-center">
                        <strong>
                        <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("NomeRec") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="height: 20px">
                        <asp:Label ID="Label2" runat="server" style="font-size: medium" Text='<%# Eval("Descricao") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label3" runat="server" style="font-size: medium" Text='<%# Eval("Duracao") %>'></asp:Label>
                        &nbsp;<span style="font-size: medium">minutos</span></td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label4" runat="server" style="font-size: medium" Text='<%# Eval("Dificuldade") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label5" runat="server" style="font-size: medium" Text='<%# Eval("Rating") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <em>
            <asp:Button ID="Button1" runat="server" CommandName="viewdetails" CommandArgument='<%# Eval("Receita_id") %>' Text="Classificar e comentar" />
            </em>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalCS %>" SelectCommand="SELECT [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Comentário], [Receita_id] FROM [Receita]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    </asp:Content>
