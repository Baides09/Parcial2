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
                <td class="auto-style1">ID ROL:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">NOMBRE ROL:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

