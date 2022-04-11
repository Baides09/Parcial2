<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Departamento.aspx.cs" Inherits="Departamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_DEPARTAMENTO" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="ID_DEPARTAMENTO" HeaderText="ID_DEPARTAMENTO" ReadOnly="True" SortExpression="ID_DEPARTAMENTO" />
            <asp:BoundField DataField="DESCRI_DEPARTAMENTO" HeaderText="DESCRI_DEPARTAMENTO" SortExpression="DESCRI_DEPARTAMENTO" />
        </Columns>
    </asp:GridView>
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
</asp:Content>

