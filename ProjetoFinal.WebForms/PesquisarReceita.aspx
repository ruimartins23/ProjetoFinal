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
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td style="width: 187px; height: 20px;">Nome</td>
                        <td style="height: 20px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("NomeRec") %>'></asp:Label>
                        </td>
                        <td style="height: 20px"></td>
                    </tr>
                    <tr>
                        <td style="width: 187px; height: 20px;">Descrição</td>
                        <td style="height: 20px">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Descricao") %>'></asp:Label>
                        </td>
                        <td style="height: 20px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 187px">Duração</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Duracao") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 187px">Dificuldade</td>
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
