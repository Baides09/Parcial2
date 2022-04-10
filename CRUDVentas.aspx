<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="CRUDVentas.aspx.cs" Inherits="CRUDVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        VENTAS</p>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">CLAVE DE PRODUCTO:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">CANTIDAD:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <p>
        <asp:Button ID="Button1" runat="server" Text="GUARDAR" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="LIMPIAR" />
    </p>
</asp:Content>

