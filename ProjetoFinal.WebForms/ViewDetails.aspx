<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="ProjetoFinal.WebForms.ViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table style="width: 100%; height: 293px; margin-bottom: 0px">
                <tr>
                    <td class="text-center" style="width: 214px">
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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
                        <asp:Label ID="Label1" runat="server" Text="Rating: "></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="28px" Text="Classificar" Width="75px" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalCS %>" SelectCommand="SELECT [NomeRec], [Descricao], [Duracao], [Dificuldade], [Rating], [Categoria], [Comentário] FROM [Receita] WHERE ([Receita_id] = @Receita_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Receita_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
