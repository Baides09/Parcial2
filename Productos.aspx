<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Productos.aspx.cs" Inherits="Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_PRODUCTO" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="ID_PRODUCTO" HeaderText="ID_PRODUCTO" ReadOnly="True" SortExpression="ID_PRODUCTO" />
            <asp:BoundField DataField="DESCRI_PRODUCTO" HeaderText="DESCRI_PRODUCTO" SortExpression="DESCRI_PRODUCTO" />
            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
            <asp:BoundField DataField="P_U_COMPRA" HeaderText="P_U_COMPRA" SortExpression="P_U_COMPRA" />
            <asp:BoundField DataField="P_U_VENTA" HeaderText="P_U_VENTA" SortExpression="P_U_VENTA" />
            <asp:BoundField DataField="ID_DEPARTAMENTO" HeaderText="ID_DEPARTAMENTO" SortExpression="ID_DEPARTAMENTO" />
        </Columns>
    </asp:GridView>
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
 
</asp:Content>

