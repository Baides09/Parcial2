<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="CRUDProductos.aspx.cs" Inherits="CRUDProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 291px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    AGREGAR PRODUCTOS<br />
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">ID PRODUCTO:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">DESCRIPCIÓN:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">CANTIDAD:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">PRECIO U/COMPRA:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">PRECIO U/VENTA:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">DEPARTAMENTO</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="GUARDAR" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="LIMPIAR" />
</p>
</asp:Content>

