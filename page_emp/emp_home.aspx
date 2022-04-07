<%@ Page Title="" Language="VB" MasterPageFile="~/page_emp/MasterPage.master" AutoEventWireup="false" CodeFile="emp_home.aspx.vb" Inherits="page_emp_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <br />
    <asp:Label ID="login" runat="server"></asp:Label>

    <p id="back-top">
        <asp:Label ID="Label1" runat="server" Text="You loged as "></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="#6699FF"></asp:Label>
	</p>
</asp:Content>

