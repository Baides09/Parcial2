<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="CRUDUsuarios.aspx.cs" Inherits="CRUDUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 274px;
    }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            height: 24px;
            width: 159px;
        }
        .auto-style4 {
            width: 159px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>
        <br />
    <table style="width: 550px;">
        <tr class="text-md-center">
            <td colspan="2" class="text-decoration-underline" style="font: 200;">AÑADIR USUARIO
                </td>
        </tr>
        <tr>
            <td class="auto-style1">USUARIO:</td>
            <td>
                <asp:TextBox ID="TxtUser" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">PASSWORD:</td>
            <td>
                <asp:TextBox ID="TxTPass" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">GRUPO:</td>
            <td>
                <asp:TextBox ID="TxTGrupo" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">APELLIDO PATERNO:</td>
            <td>
                <asp:TextBox ID="TxTApeMaterno" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">APELLIDO MATERNO:</td>
            <td>
                <asp:TextBox ID="TxTApePaterno" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">ROL</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="TIPO_ROL" DataValueField="ID_ROL" Width="350px">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarTodosRol" TypeName="RolesDTSTableAdapters.ROLESTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID_ROL" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID_ROL" Type="Int32" />
                        <asp:Parameter Name="TIPO_ROL" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TIPO_ROL" Type="String" />
                        <asp:Parameter Name="Original_ID_ROL" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</p>
    <table style="width:541px;">
        <tr class="text-md-center">
            <td colspan="2" class="text-decoration-underline" style="font: 200;">VISTAS DEL USUARIO
                </td>
        </tr>
        <tr>
            <td class="auto-style3">VENTAS:</td>
            <td class="auto-style2">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Activo" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">ADMINISTRAR:</td>
            <td>
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Activo" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">REPORTES:</td>
            <td>
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Activo" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">CATALOGOS:</td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Activo" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">CONSULTAS:</td>
            <td>
                <asp:CheckBox ID="CheckBox5" runat="server" Text="Activo" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">DESHACER VENTA:</td>
            <td>
                <asp:CheckBox ID="CheckBox6" runat="server" Text="Activo" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">LOGIN:</td>
            <td>
                <asp:CheckBox ID="CheckBox7" runat="server" Text="Activo" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">FACTURACIÓN:</td>
            <td>
                <asp:CheckBox ID="CheckBox8" runat="server" Text="Activo" />
            </td>
        </tr>
        </table>
<p>
    <asp:HiddenField ID="HiddenField1" runat="server" />
</p>
    <p>
    <asp:Button ID="btnGuardar" runat="server" Text="GUARDAR" OnClick="btnGuardar_Click" />
</p>
    
</asp:Content>

