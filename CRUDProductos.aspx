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
            <td colspan="2" class="text-decoration-underline" style="font: 200;">AÑADIR PRODUCTO
                </td>
        </tr>
        <tr>
            <td class="auto-style1">ID PRODUCTO:</td>
            <td>
                <asp:TextBox ID="TxTID" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">DESCRIPCIÓN:</td>
            <td>
                <asp:TextBox ID="TxTDescripcion" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">CANTIDAD:</td>
            <td>
                <asp:TextBox ID="TxTCanti" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">PRECIO U/COMPRA:</td>
            <td>
                <asp:TextBox ID="TxTPrUCom" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">PRECIO U/VENTA:</td>
            <td>
                <asp:TextBox ID="TxTVenta" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">DEPARTAMENTO</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="300px" DataSourceID="ObjectDataSource1" DataTextField="DESCRI_DEPARTAMENTO" DataValueField="ID_DEPARTAMENTO">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarDepartamentosAll" TypeName="DepartamentoDTSTableAdapters.DepartamentoTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID_DEPARTAMENTO" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID_DEPARTAMENTO" Type="Int32" />
                        <asp:Parameter Name="DESCRI_DEPARTAMENTO" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="DESCRI_DEPARTAMENTO" Type="String" />
                        <asp:Parameter Name="Original_ID_DEPARTAMENTO" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
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

