<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="CRUDdepartamento.aspx.cs" Inherits="CRUDdepartamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 234px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td colspan="2" class="text-decoration-underline" style="font: 200;">AÑADIR DEPARTAMENTO
                </td>
            </tr>
            <tr>
                <td class="auto-style1">ID DEPARTAMENTO:</td>
                <td>
                    <asp:TextBox ID="TxTDepa1" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">NOMBRE DEPARTAMENTO:</td>
                <td>
                    <asp:TextBox ID="TxTNombre" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Guardar" />
    </p>
</asp:Content>

