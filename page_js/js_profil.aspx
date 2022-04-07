 <%@ Page Title="" Language="VB" MasterPageFile="~/page_js/MasterPage.master" AutoEventWireup="false" CodeFile="js_profil.aspx.vb" Inherits="page_js_js_profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 76%;
    }
        .style5
        {
            width: 110px;
        }
        .style6
        {
            width: 125px;
        }
        .style7
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <section class="light-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>WE`RE CREATIVE</h3>
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
                                        <table class="style1">
                                            <tr>
                                                <td class="style5">
                                                    First Name</td>
                                                <td class="style6">
                                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel1" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Last Name</td>
                                                <td class="style6">
                                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel2" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Gender</td>
                                                <td class="style6">
                                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel3" runat="server">
                                                <td>
                                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Width="200px">
                                                            <asp:ListItem>Male</asp:ListItem>
                                                            <asp:ListItem>Female</asp:ListItem>
                                                        </asp:DropDownList>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Email</td>
                                                <td class="style6">
                                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel4" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Telp</td>
                                                <td class="style6">
                                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel5" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Address</td>
                                                <td class="style6">
                                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel6" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    City</td>
                                                <td class="style6">
                                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel7" runat="server">
                                                <td>
                                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" Width="200px">
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
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Diploma</td>
                                                <td class="style6">
                                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel8" runat="server">
                                                <td>
                                                        <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" Width="200px">
                                                            <asp:ListItem>SMA</asp:ListItem>
                                                            <asp:ListItem>D3</asp:ListItem>
                                                            <asp:ListItem>S1</asp:ListItem>
                                                            <asp:ListItem>S2</asp:ListItem>
                                                            <asp:ListItem>S3</asp:ListItem>
                                                            <asp:ListItem>Other</asp:ListItem>
                                                        </asp:DropDownList>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Alumni</td>
                                                <td class="style6">
                                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel9" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox7" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Graduate Year</td>
                                                <td class="style6">
                                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel10" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Category</td>
                                                <td class="style6">
                                                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel11" runat="server">
                                                <td>
                                                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="menuCategory" 
                                                        DataTextField="category_name" DataValueField="category_name" class="form-control" Width="200px">
                                                        </asp:DropDownList>
                                                        <br />
                                                        <asp:SqlDataSource ID="menuCategory" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                            SelectCommand="SELECT [category_name] FROM [category]"></asp:SqlDataSource>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Username</td>
                                                <td class="style6">
                                                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel12" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox9" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Password</td>
                                                <td class="style6">
                                                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <asp:Panel ID="Panel13" runat="server">
                                                <td>
                                                        <asp:TextBox ID="TextBox10" runat="server" class="form-control" Width="200px"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><asp:Button ID="Button2" runat="server" Text="Save" ForeColor="White" class="btn"></asp:Button>
                                                </td>
                                                </asp:Panel>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    <br /><asp:Button ID="Button1" runat="server" class="btn" ForeColor="White" 
                                                        Text="Edit Profile" />
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

