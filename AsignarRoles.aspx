<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="AsignarRoles.aspx.cs" Inherits="AsignarRoles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 187px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Label ID="Label1" runat="server" Text="Asignar Roles"></asp:Label>
    <br />
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">ID ROL:</td>
            <td>
                <asp:TextBox ID="TxTIdRol" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">NOMBRE ROL:</td>
            <td>
                <asp:TextBox ID="TxTNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</p>
    <p>
        <asp:HiddenField ID="HiddenField1" runat="server" />
</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="GUARDAR" OnClick="Button1_Click" />
</p>
</asp:Content>

