<%@ Page Title="" Language="VB" MasterPageFile="~/page_adm/MasterPage.master" AutoEventWireup="false" CodeFile="admin_employee.aspx.vb" Inherits="page_adm_admin_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 411px;
        }
        .style2
        {
            width: 86px;
        }
        .style3
        {
            width: 33px;
        }
        .style4
        {
            width: 97px;
        }
        .style5
        {
            width: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
        <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>DATA EMPLOYEE</h3>
							<p>Data displays on table below. Use INSERT FORM to insert a new data employee. 
                                Click &#39;select&#39; to update data employee by UPDATE FORM.</p>
                            <br /><br />
                            <p>
                            <table class="style1">
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
                                                <td class="style2" valign="top">
                                                    First Name</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Last Name</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Username</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Password</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox9" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    &nbsp;</td>
                                                <td class="style3" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <br /><asp:Button ID="Button3" runat="server" Text="Insert" class="btn" ForeColor="White" />
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [employee] WHERE [emp_id] = @emp_id" 
                                                        InsertCommand="INSERT INTO [employee] ([emp_firstname], [emp_lastname], [emp_username], [emp_password]) VALUES (@emp_firstname, @emp_lastname, @emp_username, @emp_password)" 
                                                        SelectCommand="SELECT * FROM [employee]" 
                                                        
                                                        UpdateCommand="UPDATE [employee] SET [emp_firstname] = @emp_firstname, [emp_lastname] = @emp_lastname, [emp_username] = @emp_username, [emp_password] = @emp_password WHERE [emp_id] = @emp_id">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="emp_id" Type="Decimal" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:ControlParameter ControlID="TextBox6" Name="emp_firstname" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox7" Name="emp_lastname" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox8" Name="emp_username" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox9" Name="emp_password" 
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
                                    </td>
                                    <td>
                                    <asp:Panel ID="Panel2" runat="server">
                                        <table class="style1">
                                            <tr>
                                               <td colspan="3" valign="top">
                                                <div class="section-text">
							                        <h3>UPDATE FORM</h3>
                                                </div>
                                               </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    First Name</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    Last Name</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    Username</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    Password</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    &nbsp;</td>
                                                <td class="style5" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <asp:Panel ID="Panel1" runat="server">
                                                        <asp:Label ID="emp_id" runat="server" Text="emp_id"></asp:Label>
                                                    </asp:Panel>
                                                    <br /><asp:Button ID="Button2" runat="server" Text="Update" class="btn" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                   </td>
                                </tr>
                            </table> <br /><br /><br />
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="200px"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Text="search by employee's last name" Font-Size="Smaller"></asp:Label>
                            <br /> <asp:Button ID="Button1" runat="server" class="btn" Text="search" ForeColor="White"></asp:Button>
                            <br /><br /> 
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="emp_id" DataSourceID="SqlDataSource1" Width="900px" 
                                    AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="emp_id" HeaderText="emp_id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="emp_id" />
                                    <asp:BoundField DataField="emp_firstname" HeaderText="emp_firstname" 
                                        SortExpression="emp_firstname" />
                                    <asp:BoundField DataField="emp_lastname" HeaderText="emp_lastname" 
                                        SortExpression="emp_lastname" />
                                    <asp:BoundField DataField="emp_username" HeaderText="emp_username" 
                                        SortExpression="emp_username" />
                                    <asp:BoundField DataField="emp_password" HeaderText="emp_password" 
                                        SortExpression="emp_password" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [employee] WHERE [emp_id] = @emp_id" 
                                InsertCommand="INSERT INTO [employee] ([emp_firstname], [emp_lastname], [emp_username], [emp_password]) VALUES (@emp_firstname, @emp_lastname, @emp_username, @emp_password)" 
                                SelectCommand="SELECT * FROM [employee]" 
                                
                                    
                                    UpdateCommand="UPDATE [employee] SET [emp_firstname] = @emp_firstname, [emp_lastname] = @emp_lastname, [emp_username] = @emp_username, [emp_password] = @emp_password WHERE [emp_id] = @emp_id" 
                                    FilterExpression="emp_lastname like '{0}%'">
                                <DeleteParameters>
                                    <asp:Parameter Name="emp_id" Type="Decimal" />
                                </DeleteParameters>
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="emp_lastname" 
                                        PropertyName="Text" />
                                </FilterParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="emp_firstname" Type="String" />
                                    <asp:Parameter Name="emp_lastname" Type="String" />
                                    <asp:Parameter Name="emp_username" Type="String" />
                                    <asp:Parameter Name="emp_password" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="emp_firstname" Type="String" />
                                    <asp:Parameter Name="emp_lastname" Type="String" />
                                    <asp:Parameter Name="emp_username" Type="String" />
                                    <asp:Parameter Name="emp_password" Type="String" />
                                    <asp:Parameter Name="emp_id" Type="Decimal" />
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

