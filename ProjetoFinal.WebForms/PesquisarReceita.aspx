<%@ Page Title="Pesquisar Receita" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PesquisarReceita.aspx.cs" Inherits="ProjetoFinal.WebForms.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Pesquisar receita:</h2>
        <br />
        &nbsp;Nome:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="nameInput" runat="server"></asp:TextBox>
        <br />
    <br />
&nbsp;Categoria:&nbsp;&nbsp;
        <asp:TextBox ID="ctgryInput" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="25px" Text="Pesquisar" Width="88px" OnClick="Button1_Click" />
    <br />
<br />
<br />
    <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" RepeatColumns="3">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table class="nav-justified" style="height: 275px">
                    <tr>
                        <td style="width: 59px; height: 83px; font-size: medium;"><strong>Nome</strong></td>
                        <td style="height: 83px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("NomeRec") %>' style="font-size: medium"></asp:Label>
                        </td>
                        <td style="height: 83px"></td>
                    </tr>
                    <tr>
                        <td style="width: 59px; height: 132px; font-size: medium;"><strong>Descrição</strong></td>
                        <td style="height: 132px">
                            <asp:Label ID="Label4" runat="server" style="font-size: medium" Text='<%# Eval("Descricao") %>'></asp:Label>
                        </td>
                        <td style="height: 132px"></td>
                    </tr>
                    <tr>
                        <td style="width: 59px"><strong>Duração</strong></td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Duracao") %>'></asp:Label>
                            &nbsp;minutos</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 59px"><strong>Dificuldade</strong></td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Dificuldade") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

</asp:Content>
