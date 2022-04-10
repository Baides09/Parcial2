<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="CRUDUsuarios.aspx.cs" Inherits="CRUDUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 274px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>
        USUARIO<br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">USUARIO:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">PASSWORD:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">GRUPO:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="350px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">APELLIDO PATERNO:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">APELLIDO MATERNO:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="350px"></asp:TextBox>
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

