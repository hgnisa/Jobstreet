<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="reg_js.aspx.vb" Inherits="reg_js" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 369px;
        }
        .style2
        {
            width: 212px;
        }
        .style4
        {
            width: 240px;
        }
        .style5
        {
            width: 204px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br /><br /><br />
    <section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
							<h2>Create a new account</h2>
							<p> Use the form below to create a new account.</p>
                            <table class="style1" style="color: #666666">
                                <tr>
                                    <td class="style2">
                                        First Name</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="fname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Last Name</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="lname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Gender</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:DropDownList ID="gender" runat="server">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="gender" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Email</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                            ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Telephone</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="telp" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                            ControlToValidate="telp" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Address</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="address" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                            ControlToValidate="address" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        City</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
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
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                            ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Diploma</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:DropDownList ID="diploma" runat="server">
                                            <asp:ListItem>SMA</asp:ListItem>
                                            <asp:ListItem>D3</asp:ListItem>
                                            <asp:ListItem>S1</asp:ListItem>
                                            <asp:ListItem>S2</asp:ListItem>
                                            <asp:ListItem>S3</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                            ControlToValidate="diploma" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Alumna</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="alumna" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                            ControlToValidate="alumna" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Graduate Year</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="graduateyear" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                            ControlToValidate="graduateyear" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Background Category</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:DropDownList ID="category" runat="server" DataSourceID="menuCategory" 
                                            DataTextField="category_name" DataValueField="category_name">
                                        </asp:DropDownList>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="category" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        <asp:SqlDataSource ID="menuCategory" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [category_name] FROM [category]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Username</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="username" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Password</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style4">
                                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="password" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td class="style4">
                                        <asp:Button ID="Button1" runat="server" Text="Create" class="btn" ForeColor="White" />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [jobseeker] WHERE [js_id] = @js_id" 
                                            InsertCommand="INSERT INTO [jobseeker] ([js_firstname], [js_lastname], [js_gender], [js_email], [js_telp], [js_address], [js_city], [js_username], [js_password], [js_diploma], [js_alumna], [js_graduateyear], [js_category]) VALUES (@js_firstname, @js_lastname, @js_gender, @js_email, @js_telp, @js_address, @js_city, @js_username, @js_password, @js_diploma, @js_alumna, @js_graduateyear, @js_category)" 
                                            SelectCommand="SELECT * FROM [jobseeker]" 
                                            UpdateCommand="UPDATE [jobseeker] SET [js_firstname] = @js_firstname, [js_lastname] = @js_lastname, [js_gender] = @js_gender, [js_email] = @js_email, [js_telp] = @js_telp, [js_address] = @js_address, [js_city] = @js_city, [js_username] = @js_username, [js_password] = @js_password, [js_diploma] = @js_diploma, [js_alumna] = @js_alumna, [js_graduateyear] = @js_graduateyear, [js_category] = @js_category WHERE [js_id] = @js_id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="js_id" Type="Decimal" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:ControlParameter ControlID="fname" Name="js_firstname" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="lname" Name="js_lastname" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="gender" Name="js_gender" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="email" Name="js_email" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="telp" Name="js_telp" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="address" Name="js_address" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="DropDownList1" Name="js_city" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="username" Name="js_username" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="password" Name="js_password" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="diploma" Name="js_diploma" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="alumna" Name="js_alumna" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="graduateyear" Name="js_graduateyear" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="category" Name="js_category" 
                                                    PropertyName="SelectedValue" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="js_firstname" Type="String" />
                                                <asp:Parameter Name="js_lastname" Type="String" />
                                                <asp:Parameter Name="js_gender" Type="String" />
                                                <asp:Parameter Name="js_email" Type="String" />
                                                <asp:Parameter Name="js_telp" Type="String" />
                                                <asp:Parameter Name="js_address" Type="String" />
                                                <asp:Parameter Name="js_city" Type="String" />
                                                <asp:Parameter Name="js_username" Type="String" />
                                                <asp:Parameter Name="js_password" Type="String" />
                                                <asp:Parameter Name="js_diploma" Type="String" />
                                                <asp:Parameter Name="js_alumna" Type="String" />
                                                <asp:Parameter Name="js_graduateyear" Type="String" />
                                                <asp:Parameter Name="js_category" Type="String" />
                                                <asp:Parameter Name="js_id" Type="Decimal" />
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

