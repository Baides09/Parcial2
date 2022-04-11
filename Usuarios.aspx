<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Usuarios.aspx.cs" Inherits="Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USER_NAME" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" ReadOnly="True" SortExpression="USER_NAME" />
            <asp:BoundField DataField="USER_PASSWORD" HeaderText="USER_PASSWORD" SortExpression="USER_PASSWORD" />
            <asp:BoundField DataField="GRUPO" HeaderText="GRUPO" SortExpression="GRUPO" />
            <asp:BoundField DataField="PATERNO" HeaderText="PATERNO" SortExpression="PATERNO" />
            <asp:BoundField DataField="MATERNO" HeaderText="MATERNO" SortExpression="MATERNO" />
            <asp:CheckBoxField DataField="VENTAS" HeaderText="VENTAS" SortExpression="VENTAS" />
            <asp:CheckBoxField DataField="ADMINISTRAR" HeaderText="ADMINISTRAR" SortExpression="ADMINISTRAR" />
            <asp:CheckBoxField DataField="REPORTES" HeaderText="REPORTES" SortExpression="REPORTES" />
            <asp:CheckBoxField DataField="CATALOGOS" HeaderText="CATALOGOS" SortExpression="CATALOGOS" />
            <asp:CheckBoxField DataField="CONSULTAS" HeaderText="CONSULTAS" SortExpression="CONSULTAS" />
            <asp:CheckBoxField DataField="DESHACER_VENTA" HeaderText="DESHACER_VENTA" SortExpression="DESHACER_VENTA" />
            <asp:CheckBoxField DataField="LOGIN" HeaderText="LOGIN" SortExpression="LOGIN" />
            <asp:CheckBoxField DataField="FACTURACION" HeaderText="FACTURACION" SortExpression="FACTURACION" />
            <asp:BoundField DataField="ID_ROL" HeaderText="ID_ROL" SortExpression="ID_ROL" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarUsuarioAll" TypeName="UsuarioDTSTableAdapters.UsuarioTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_USER_NAME" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="USER_NAME" Type="String" />
            <asp:Parameter Name="USER_PASSWORD" Type="String" />
            <asp:Parameter Name="GRUPO" Type="Int32" />
            <asp:Parameter Name="PATERNO" Type="String" />
            <asp:Parameter Name="MATERNO" Type="String" />
            <asp:Parameter Name="VENTAS" Type="Boolean" />
            <asp:Parameter Name="ADMINISTRAR" Type="Boolean" />
            <asp:Parameter Name="REPORTES" Type="Boolean" />
            <asp:Parameter Name="CATALOGOS" Type="Boolean" />
            <asp:Parameter Name="CONSULTAS" Type="Boolean" />
            <asp:Parameter Name="DESHACER_VENTA" Type="Boolean" />
            <asp:Parameter Name="LOGIN" Type="Boolean" />
            <asp:Parameter Name="FACTURACION" Type="Boolean" />
            <asp:Parameter Name="ID_ROL" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="USER_PASSWORD" Type="String" />
            <asp:Parameter Name="GRUPO" Type="Int32" />
            <asp:Parameter Name="PATERNO" Type="String" />
            <asp:Parameter Name="MATERNO" Type="String" />
            <asp:Parameter Name="VENTAS" Type="Boolean" />
            <asp:Parameter Name="ADMINISTRAR" Type="Boolean" />
            <asp:Parameter Name="REPORTES" Type="Boolean" />
            <asp:Parameter Name="CATALOGOS" Type="Boolean" />
            <asp:Parameter Name="CONSULTAS" Type="Boolean" />
            <asp:Parameter Name="DESHACER_VENTA" Type="Boolean" />
            <asp:Parameter Name="LOGIN" Type="Boolean" />
            <asp:Parameter Name="FACTURACION" Type="Boolean" />
            <asp:Parameter Name="ID_ROL" Type="Int32" />
            <asp:Parameter Name="Original_USER_NAME" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <p>
    </p>
</asp:Content>

