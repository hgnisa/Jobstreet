<%@ Page Title="" Language="VB" MasterPageFile="~/page_adm/MasterPage.master" AutoEventWireup="false" CodeFile="admin_company.aspx.vb" Inherits="page_adm_admin_company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 385px;
        }
        .style2
        {
            width: 93px;
        }
        .style3
        {
            width: 30px;
        }
        .style8
        {
            width: 133px;
        }
        .style9
        {
            width: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>DATA COMPANY</h3>
							<p>Data displays on table below. Use INSERT FORM to insert a new data company. Click 
                                &#39;select&#39; to update data company by UPDATE FORM.</p>
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
                                                    Company Name</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Logo</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Address</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    City</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
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
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Description</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox10" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Email</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox11" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Telp</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox13" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Employee Username</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox14" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    &nbsp;</td>
                                                <td class="style3" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <br /><asp:Button ID="Button3" runat="server" Text="Insert" class="btn" ForeColor="White" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                    <asp:Panel ID="Panel2" runat="server" Width="459px">
                                        <table class="style1">
                                            <tr>
                                               <td colspan="3" valign="top">
                                                <div class="section-text">
							                        <h3>UPDATE FORM</h3>
                                                </div>
                                               </td>
                                            </tr>
                                            <tr>
                                            <td class="style2" valign="top">
                                                Company Name</td>
                                            <td class="style3" valign="top">
                                                :</td>
                                            <td valign="top">
                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                            </td>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Logo</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload2" runat="server" Width="200px"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Address</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    City</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
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
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Description</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Email</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Telp</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox16" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" valign="top">
                                                    Employee Username</td>
                                                <td class="style3" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox17" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style8" valign="top">
                                                    &nbsp;</td>
                                                <td class="style9" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <asp:Panel ID="Panel1" runat="server">
                                                        <asp:Label ID="company_id" runat="server" Text="emp_id"></asp:Label>
                                                    </asp:Panel>
                                                    <br /><asp:Button ID="Button2" runat="server" Text="Update" class="btn" 
                                                        ForeColor="White" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                   </td>
                                </tr>
                            </table> <br /><br /><br />
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="200px"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Text="search by company's name" Font-Size="Smaller"></asp:Label>
                            <br /> <asp:Button ID="Button1" runat="server" class="btn" Text="search" ForeColor="White"></asp:Button>
                            <br /><br /> 
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="company_id" DataSourceID="SqlDataSource1" Width="900px" 
                                    AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="company_id" HeaderText="ID" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="company_id" />
                                    <asp:BoundField DataField="company_name" HeaderText="NAME" 
                                        SortExpression="company_name"/>
                                    <asp:TemplateField HeaderText="LOGO">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1"   width="150px" height="150px" runat="server" ImageUrl='<%# Eval("company_id", "Handler.ashx?company_id={0}")%>'/>
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="company_address" HeaderText="ADDRESS" 
                                        SortExpression="company_address" />
                                    <asp:BoundField DataField="company_city" HeaderText="CITY" 
                                        SortExpression="company_city" />
                                    <asp:BoundField DataField="company_description" HeaderText="DESCRIPTION" 
                                        SortExpression="company_description" />
                                    <asp:BoundField DataField="company_email" HeaderText="EMAIL" 
                                        SortExpression="company_email" />
                                    <asp:BoundField DataField="company_telp" HeaderText="TELP" 
                                        SortExpression="company_telp" />
                                    <asp:BoundField DataField="company_emp_username" 
                                        HeaderText="USERNAME" SortExpression="company_emp_username" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [company] WHERE [company_id] = @company_id" 
                                InsertCommand="INSERT INTO [company] ([company_logo], [company_name], [company_address], [company_city], [company_description], [company_email], [company_telp], [company_emp_username]) VALUES (@company_logo, @company_name, @company_address, @company_city, @company_description, @company_email, @company_telp, @company_emp_username)" 
                                SelectCommand="SELECT * FROM [company]" 
                                
                                    
                                    
                                    UpdateCommand="UPDATE [company] SET [company_logo] = @company_logo, [company_name] = @company_name, [company_address] = @company_address, [company_city] = @company_city, [company_description] = @company_description, [company_email] = @company_email, [company_telp] = @company_telp, [company_emp_username] = @company_emp_username WHERE [company_id] = @company_id" 
                                    FilterExpression="company_name like '{0}%'">
                                <DeleteParameters>
                                    <asp:Parameter Name="company_id" Type="Decimal" />
                                </DeleteParameters>
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="company_name" 
                                        PropertyName="Text" />
                                </FilterParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="company_logo" Type="Object" />
                                    <asp:Parameter Name="company_name" Type="String" />
                                    <asp:Parameter Name="company_address" Type="String" />
                                    <asp:Parameter Name="company_city" Type="String" />
                                    <asp:Parameter Name="company_description" Type="String" />
                                    <asp:Parameter Name="company_email" Type="String" />
                                    <asp:Parameter Name="company_telp" Type="String" />
                                    <asp:Parameter Name="company_emp_username" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="company_logo" Type="Object" />
                                    <asp:Parameter Name="company_name" Type="String" />
                                    <asp:Parameter Name="company_address" Type="String" />
                                    <asp:Parameter Name="company_city" Type="String" />
                                    <asp:Parameter Name="company_description" Type="String" />
                                    <asp:Parameter Name="company_email" Type="String" />
                                    <asp:Parameter Name="company_telp" Type="String" />
                                    <asp:Parameter Name="company_emp_username" Type="String" />
                                    <asp:Parameter Name="company_id" Type="Decimal" />
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

