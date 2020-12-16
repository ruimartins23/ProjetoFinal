<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="ProjetoFinal.WebForms.ViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table style="width: 100%; height: 283px; margin-bottom: 0px">
                <tr>
                    <td class="text-center" style="width: 214px">
                        <br />
                        <br />
                        <input type="text" id="comentTxt" runat="server" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Comentar" />
                    </td>
                    <td class="text-center">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Adicionar aos favoritos" />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalCS %>" SelectCommand="SELECT [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Comentário] FROM [Receita] WHERE ([Receita_id] = @Receita_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Receita_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
