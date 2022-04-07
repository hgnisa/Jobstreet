<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="reg_emp.aspx.vb" Inherits="reg_emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 312px;
        }
        .style3
        {
            width: 19px;
        }
        .style4
        {
            width: 86px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
							<h2>Create a new account</h2>
							<p> Use the form below to create a new account.</p>
                            <table class="style1">
                                <tr>
                                    <td class="style4">
                                        First Name</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="r_firstname" runat="server" Wrap="False"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="r_firstname" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        Last Name</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="r_lastname" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="r_lastname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        User Name</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="r_username" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="r_username" ErrorMessage="*">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        Password</td>
                                    <td class="style3">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="r_password" runat="server" TextMode="Password" ></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="r_password" ErrorMessage="*">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td>
                
                                        <asp:Button ID="Button1" runat="server"  Text="Create" class="btn" ForeColor="White"/>
                
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [employee] WHERE [emp_id] = @emp_id" 
                                            InsertCommand="INSERT INTO [employee] ([emp_firstname], [emp_lastname], [emp_username], [emp_password]) VALUES (@emp_firstname, @emp_lastname, @emp_username, @emp_password)" 
                                            SelectCommand="SELECT * FROM [employee]" 
                                            UpdateCommand="UPDATE [employee] SET [emp_firstname] = @emp_firstname, [emp_lastname] = @emp_lastname, [emp_username] = @emp_username, [emp_password] = @emp_password WHERE [emp_id] = @emp_id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="emp_id" Type="Decimal" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:ControlParameter ControlID="r_firstname" Name="emp_firstname" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="r_lastname" Name="emp_lastname" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="r_username" Name="emp_username" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="r_password" Name="emp_password" 
                                                    PropertyName="Text" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="emp_firstname" Type="String" />
                                                <asp:Parameter Name="emp_lastname" Type="String" />
                                                <asp:Parameter Name="emp_username" Type="String" />
                                                <asp:Parameter Name="emp_password" Type="String" />
                                                <asp:Parameter Name="emp_id" Type="Decimal" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                
                                    </td>
                                </tr>
                            </table> 
					</div>
				</div>
			</div>
		</section>
</asp:Content>

