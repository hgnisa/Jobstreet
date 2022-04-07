<%@ Page Title="" Language="VB" MasterPageFile="~/page_emp/MasterPage.master" AutoEventWireup="false" CodeFile="emp_input_company.aspx.vb" Inherits="page_emp_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 499px;
        }
        .style2
        {
            width: 91px;
        }
        .style3
        {
            width: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
		<section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>FORM INSERT COMPANY</h3>
							<p>Input a new company for create a new job</p>
							<table class="style1">
                                <tr>
                                    <td class="style2">
                                        Logo</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Name</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="comp_name" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="comp_name" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Description</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="comp_desc" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="comp_desc" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Address</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="comp_address" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="comp_address" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        City</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Width="200px">
                                            <asp:ListItem>Bukit Raya</asp:ListItem>
                                            <asp:ListItem>Lima Puluh</asp:ListItem>
                                            <asp:ListItem>Marpoyan Damai</asp:ListItem>
                                            <asp:ListItem>Payung Sekaki</asp:ListItem>
                                            <asp:ListItem>Pekanbaru Kota</asp:ListItem>
                                            <asp:ListItem>Rumbai</asp:ListItem>
                                            <asp:ListItem>Rumbai Pesisir</asp:ListItem>
                                            <asp:ListItem>Sail</asp:ListItem>
                                            <asp:ListItem>Senapelan</asp:ListItem>
                                            <asp:ListItem>Sukajadi</asp:ListItem>
                                            <asp:ListItem>Tampan</asp:ListItem>
                                            <asp:ListItem>Tenayan Raya</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="DropDownList1" ErrorMessage="*" class="form-control" Width="200px"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Email</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="comp_email" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="comp_email" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Telephone</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="comp_telp" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                            ControlToValidate="comp_telp" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td>
                
                                        <asp:Button ID="Button1" runat="server" Text="Add" class="btn" ForeColor="White" />
                
                                    </td>
                                </tr>
                            </table> 
						</div>
					</div>
				</div>
			</div>
		</section>

    <p id="back-top">
        <asp:Label ID="Label1" runat="server" Text="You loged as "></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="#6699FF"></asp:Label>
	</p>
</asp:Content>

