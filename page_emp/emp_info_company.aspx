<%@ Page Title="" Language="VB" MasterPageFile="~/page_emp/MasterPage.master" AutoEventWireup="false" CodeFile="emp_info_company.aspx.vb" Inherits="page_emp_emp_info_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 450px;
        }
        .style6
        {
            width: 23px;
        }
        .style7
        {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>COMPANY INFORMATION</h3>
							<p>Company's detail information you created</p>
							<p>
                            
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource1" Width="1100px" Height="100px" 
                                    DataKeyNames="company_id">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                        <asp:BoundField DataField="company_id" HeaderText="ID" 
                                            SortExpression="company_id" InsertVisible="False" ReadOnly="True" />
                                        <asp:TemplateField HeaderText="LOGO">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1"   width="100px" height="100px" runat="server" ImageUrl='<%# Eval("company_id", "../page_adm/Handler.ashx?company_id={0}")%>'/>
                                        </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="company_name" HeaderText="COMPANY" 
                                            SortExpression="company_name" />
                                        <asp:BoundField DataField="company_address" HeaderText="ADDRESS" 
                                            SortExpression="company_address" />
                                        <asp:BoundField DataField="company_city" 
                                            HeaderText="CITY" SortExpression="company_city" />
                                        <asp:BoundField DataField="company_description" HeaderText="DESCRIPTION" 
                                            SortExpression="company_description" />
                                        <asp:BoundField DataField="company_email" HeaderText="EMAIL" 
                                            SortExpression="company_email" />
                                        <asp:BoundField DataField="company_telp" HeaderText="TELP" 
                                            SortExpression="company_telp" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    SelectCommand="SELECT [company_id], [company_logo], [company_name], [company_address], [company_city], [company_description], [company_email], [company_telp] FROM [company] WHERE ([company_emp_username] = @company_emp_username)" 
                                    DeleteCommand="DELETE FROM [company] WHERE [company_id] = @company_id" 
                                    InsertCommand="INSERT INTO [company] ([company_logo], [company_name], [company_address], [company_city], [company_description], [company_email], [company_telp]) VALUES (@company_logo, @company_name, @company_address, @company_city, @company_description, @company_email, @company_telp)" 
                                    
                                    
                                    UpdateCommand="UPDATE [company] SET [company_logo] = @company_logo, [company_name] = @company_name, [company_address] = @company_address, [company_city] = @company_city, [company_description] = @company_description, [company_email] = @company_email, [company_telp] = @company_telp WHERE [company_id] = @company_id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="company_id" Type="Decimal" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="company_logo" Type="Object" />
                                        <asp:Parameter Name="company_name" Type="String" />
                                        <asp:Parameter Name="company_address" Type="String" />
                                        <asp:Parameter Name="company_city" Type="String" />
                                        <asp:Parameter Name="company_description" Type="String" />
                                        <asp:Parameter Name="company_email" Type="String" />
                                        <asp:Parameter Name="company_telp" Type="String" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label3" Name="company_emp_username" 
                                            PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="company_logo" Type="Object" />
                                        <asp:Parameter Name="company_name" Type="String" />
                                        <asp:Parameter Name="company_address" Type="String" />
                                        <asp:Parameter Name="company_city" Type="String" />
                                        <asp:Parameter Name="company_description" Type="String" />
                                        <asp:Parameter Name="company_email" Type="String" />
                                        <asp:Parameter Name="company_telp" Type="String" />
                                        <asp:Parameter Name="company_id" Type="Decimal" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            
                            </p>
                            <br /><br /><br />
						    <asp:Panel ID="Panel1" runat="server">
                                        <table class="style1">
                                            <tr>
                                               <td colspan="3" valign="top">
                                                <div class="section-text">
							                        <h3>UPDATE FORM</h3>
                                                </div>
                                               </td>
                                            </tr>
                                            <tr>
                                            <td class="style7" valign="top">
                                                Company Name</td>
                                            <td class="style6" valign="top">
                                                :</td>
                                            <td valign="top">
                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                            </td>
                                            <tr>
                                                <td class="style7" valign="top">
                                                    Logo</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload2" runat="server" Width="200px"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style7" valign="top">
                                                    Address</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style7" valign="top">
                                                    City</td>
                                                <td class="style6" valign="top">
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
                                                <td class="style7" valign="top">
                                                    Description</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style7" valign="top">
                                                    Email</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style7" valign="top">
                                                    Telp</td>
                                                <td class="style6" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox16" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style7" valign="top">
                                                    &nbsp;</td>
                                                <td class="style6" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <asp:Panel ID="Panel2" runat="server">
                                                        <asp:Label ID="company_id" runat="server" Text="emp_id"></asp:Label>
                                                    </asp:Panel>
                                                    <br /><asp:Button ID="Button2" runat="server" Text="Update" class="btn" 
                                                        ForeColor="White" />
                                                </td>
                                            </tr>
                                        </table>
                            </asp:Panel>
						</div>
					</div>
				</div>
			</div>
		</section>

    <p id="back-top">
        <asp:Label ID="Label2" runat="server" Text="You loged as "></asp:Label>
        <asp:Label ID="Label3" runat="server" ForeColor="#6699FF"></asp:Label>
	</p>
</asp:Content>

