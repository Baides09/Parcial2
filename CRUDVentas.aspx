<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="CRUDVentas.aspx.cs" Inherits="CRUDVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 245px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" class="text-decoration-underline" style="font: 200;">AÑADIR VENTA
                </td>
        </tr>
        <tr>
            <td class="auto-style1">FOLIO:</td>
            <td>
                <asp:TextBox ID="TxTFolio" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">ID PRODUCTO:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="350px" DataSourceID="ObjectDataSource1" DataTextField="DESCRI_PRODUCTO" DataValueField="ID_PRODUCTO">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarProductosAll" TypeName="ProductosDTSTableAdapters.PRODUCTOSTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ID_PRODUCTO" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID_PRODUCTO" Type="Int32" />
                        <asp:Parameter Name="DESCRI_PRODUCTO" Type="String" />
                        <asp:Parameter Name="CANTIDAD" Type="Int32" />
                        <asp:Parameter Name="P_U_COMPRA" Type="Int32" />
                        <asp:Parameter Name="P_U_VENTA" Type="Int32" />
                        <asp:Parameter Name="ID_DEPARTAMENTO" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="DESCRI_PRODUCTO" Type="String" />
                        <asp:Parameter Name="CANTIDAD" Type="Int32" />
                        <asp:Parameter Name="P_U_COMPRA" Type="Int32" />
                        <asp:Parameter Name="P_U_VENTA" Type="Int32" />
                        <asp:Parameter Name="ID_DEPARTAMENTO" Type="Int32" />
                        <asp:Parameter Name="Original_ID_PRODUCTO" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">CANTIDAD:</td>
            <td>
                <asp:TextBox ID="TxTCantidad" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">PRECIO UNITARIO:</td>
            <td>
                <asp:TextBox ID="TxTPrcU" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">DESCRIPCION:</td>
            <td>
                <asp:TextBox ID="TxTDescri" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <p>
        <asp:Button ID="Button1" runat="server" Text="GUARDAR" OnClick="Button1_Click" />
    </p>
</asp:Content>

