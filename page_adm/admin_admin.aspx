<%@ Page Title="" Language="VB" MasterPageFile="~/page_adm/MasterPage.master" AutoEventWireup="false" CodeFile="admin_admin.aspx.vb" Inherits="page_adm_admin_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 130%;
        }
        .style2
        {
            width: 28px;
        }
        .style3
        {
            width: 82px;
        }
        .style5
        {
            width: 102px;
        }
        .style6
        {
            width: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
<section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>DATA ADMIN</h3>
							<p>Data displays on table below. Use INSERT FORM to insert a new data admin. Click 
                                &#39;select&#39; to update data admin by UPDATE FORM.</p>
                            <br /><br />
                            <p>
                            <table class="style1" width="700px">
                                <tr>
                                    <td>
                                        <table class="style1">
                                            <tr>
                                               <td colspan="3" valign="top">
                                                <div class="section-text">
							                        <h3>INSERT FORM</h3>
                                                </div>
                                               </td>
                                            </tr>
                                            <tr>
                                                <td class="style3" valign="top">
                                                    First Name</td>
                                                <td class="style2" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style3" valign="top">
                                                    Last Name</td>
                                                <td class="style2" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style3" valign="top">
                                                    Username</td>
                                                <td class="style2" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style3" valign="top">
                                                    Password</td>
                                                <td class="style2" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox9" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style3" valign="top">
                                                    &nbsp;</td>
                                                <td class="style2" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <br /><asp:Button ID="Button3" runat="server" Text="Insert" class="btn" ForeColor="White" />
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [admin] WHERE [admin_id] = @admin_id" 
                                                        InsertCommand="INSERT INTO [admin] ([admin_firstname], [admin_lastname], [admin_username], [admin_password]) VALUES (@admin_firstname, @admin_lastname, @admin_username, @admin_password)" 
                                                        SelectCommand="SELECT * FROM [admin]" 
                                                        UpdateCommand="UPDATE [admin] SET [admin_firstname] = @admin_firstname, [admin_lastname] = @admin_lastname, [admin_username] = @admin_username, [admin_password] = @admin_password WHERE [admin_id] = @admin_id">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="admin_id" Type="Decimal" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:ControlParameter ControlID="TextBox6" Name="admin_firstname" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox7" Name="admin_lastname" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox8" Name="admin_username" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox9" Name="admin_password" 
                                                                PropertyName="Text" Type="String" />
                                                        </InsertParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="admin_firstname" Type="String" />
                                                            <asp:Parameter Name="admin_lastname" Type="String" />
                                                            <asp:Parameter Name="admin_username" Type="String" />
                                                            <asp:Parameter Name="admin_password" Type="String" />
                                                            <asp:Parameter Name="admin_id" Type="Decimal" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                    <asp:Panel ID="Panel2" runat="server" Width="495px" style="margin-left: 83px">
                                        <table class="style1">
                                            <tr>
                                               <td colspan="3" valign="top">
                                                <div class="section-text">
							                        <h3>UPDATE FORM</h3>
                                                </div>
                                               </td>
                                            </tr>
                                            <tr>
                                                <td class="style5" valign="top">
                                                    First Name</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5" valign="top">
                                                    Last Name</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5" valign="top">
                                                    Username</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5" valign="top">
                                                    Password</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5" valign="top">
                                                    &nbsp;</td>
                                                <td class="style6" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <asp:Panel ID="Panel1" runat="server">
                                                        <asp:Label ID="admin_id" runat="server" Text="admin_id"></asp:Label>
                                                    </asp:Panel>
                                                    <br /><asp:Button ID="Button2" runat="server" Text="Update" class="btn" ForeColor="White" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                   </td>
                                </tr>
                            </table> <br /><br /><br />
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="200px"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Text="search by admin's last name" Font-Size="Smaller"></asp:Label>
                            <br /> <asp:Button ID="Button1" runat="server" class="btn" Text="search" ForeColor="White"></asp:Button>
                            <br /><br /> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="admin_id" DataSourceID="SqlDataSource1" Width="900px" 
                                    AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="admin_id" HeaderText="admin_id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="admin_id" />
                                    <asp:BoundField DataField="admin_firstname" HeaderText="admin_firstname" 
                                        SortExpression="admin_firstname" />
                                    <asp:BoundField DataField="admin_lastname" HeaderText="admin_lastname" 
                                        SortExpression="admin_lastname" />
                                    <asp:BoundField DataField="admin_username" HeaderText="admin_username" 
                                        SortExpression="admin_username" />
                                    <asp:BoundField DataField="admin_password" HeaderText="admin_password" 
                                        SortExpression="admin_password" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [admin] WHERE [admin_id] = @admin_id" 
                                InsertCommand="INSERT INTO [admin] ([admin_firstname], [admin_lastname], [admin_username], [admin_password]) VALUES (@admin_firstname, @admin_lastname, @admin_username, @admin_password)" 
                                SelectCommand="SELECT * FROM [admin]" 
                                
                                    UpdateCommand="UPDATE [admin] SET [admin_firstname] = @admin_firstname, [admin_lastname] = @admin_lastname, [admin_username] = @admin_username, [admin_password] = @admin_password WHERE [admin_id] = @admin_id" 
                                    FilterExpression="admin_lastname like '{0}%'">
                                <DeleteParameters>
                                    <asp:Parameter Name="admin_id" Type="Decimal" />
                                </DeleteParameters>
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="admin_lastname" 
                                        PropertyName="Text" />
                                </FilterParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="admin_firstname" Type="String" />
                                    <asp:Parameter Name="admin_lastname" Type="String" />
                                    <asp:Parameter Name="admin_username" Type="String" />
                                    <asp:Parameter Name="admin_password" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="admin_firstname" Type="String" />
                                    <asp:Parameter Name="admin_lastname" Type="String" />
                                    <asp:Parameter Name="admin_username" Type="String" />
                                    <asp:Parameter Name="admin_password" Type="String" />
                                    <asp:Parameter Name="admin_id" Type="Decimal" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            </p>
                          <br />
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

