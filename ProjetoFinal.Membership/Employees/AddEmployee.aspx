<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="Employees.Membership.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="server">

    <div class="form-group">
        <label for="exampleFormControlInput1">First Name</label>
        <asp:TextBox ID="FirstNameTxt" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="exampleFormControlSelect1">Last Name</label>
        <asp:TextBox ID="LastNameTxt" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="exampleFormControlSelect2">Example multiple select</label>
        <asp:DropDownList ID="EmployeeTypeDropDown" runat="server" CssClass="form-control">
            <asp:ListItem Value="0">Administrator</asp:ListItem>
            <asp:ListItem Value="1">Staff</asp:ListItem>
        </asp:DropDownList>
    </div>
    <asp:Button ID="SaveBtn" CssClass="btn btn-primary" runat="server" Text="Save" />
    <asp:Button ID="ResetBtn" CssClass="btn btn-info mr-4" runat="server" Text="Clear form" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptPlaceHolder" runat="server">
</asp:Content>
