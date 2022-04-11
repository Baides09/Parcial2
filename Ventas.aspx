<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Ventas.aspx.cs" Inherits="Ventas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="FOLIO" HeaderText="FOLIO" SortExpression="FOLIO" />
            <asp:BoundField DataField="ID_PRODUCTO" HeaderText="ID_PRODUCTO" SortExpression="ID_PRODUCTO" />
            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
            <asp:BoundField DataField="P_UNITARIO" HeaderText="P_UNITARIO" SortExpression="P_UNITARIO" />
            <asp:BoundField DataField="DESCRIPCION_VENTA" HeaderText="DESCRIPCION_VENTA" SortExpression="DESCRIPCION_VENTA" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarVentaAll" TypeName="VentasDTSTableAdapters.VENTASTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="FOLIO" Type="Int32" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Int32" />
            <asp:Parameter Name="CANTIDAD" Type="Int32" />
            <asp:Parameter Name="P_UNITARIO" Type="Int32" />
            <asp:Parameter Name="DESCRIPCION_VENTA" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>

