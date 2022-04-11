<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLogin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mb-3 mt-3">
      <label for="email">Usario:</label>
       <asp:TextBox ID="TxtUser" runat="server" CssClass="form-control" placeholder="Ingrese su usuario" name="user"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="txtUser" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="mb-3">
      <label for="pwd">Contraseña:</label>
        <asp:TextBox ID="TextPass" runat="server" CssClass="form-control" placeholder="Enter password" name="pswd"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="TextPass" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <asp:Button ID="Button1" cssClass="btn btn-primary" runat="server" Text="Ingresar" OnClick="Button1_Click" />
</asp:Content>

