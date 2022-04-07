<%@ Page Title="" Language="VB" MasterPageFile="~/page_adm/MasterPage.master" AutoEventWireup="false" CodeFile="admin_job.aspx.vb" Inherits="page_adm_admin_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 444px;
        }
        .style4
        {
            width: 144px;
        }
        .style5
        {
            width: 27px;
        }
        .style8
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
							<h3>DATA JOB</h3>
							<p>Data displays on table below. Use INSERT FORM to insert a new data job. Click 
                                &#39;select&#39; to update data job by UPDATE FORM.</p>
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
                                                <td class="style4" valign="top">
                                                    Company </td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                                        DataSourceID="SqlDataSource3" DataTextField="company_name" 
                                                        DataValueField="company_name" class="form-control" Width="200px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT [company_name] FROM [company]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    Title</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox18" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    Category</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="DropDownList5" runat="server" 
                                                        DataSourceID="SqlDataSource4" DataTextField="category_name" class="form-control" Width="200px"
                                                        DataValueField="category_name">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT [category_name] FROM [category]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    Position</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox9" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    Diploma</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="diploma" runat="server" class="form-control" Width="200px">
                                                        <asp:ListItem>SMA</asp:ListItem>
                                                        <asp:ListItem>D3</asp:ListItem>
                                                        <asp:ListItem>S1</asp:ListItem>
                                                        <asp:ListItem>S2</asp:ListItem>
                                                        <asp:ListItem>S3</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    Specification</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox11" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    City </td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" Width="200px">
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
                                                <td class="style4" valign="top">
                                                    Employee Username</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox14" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    &nbsp;</td>
                                                <td class="style5" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <br /><asp:Button ID="Button3" runat="server" Text="Insert" class="btn" ForeColor="White" />
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [job] WHERE [job_id] = @job_id" 
                                                        InsertCommand="INSERT INTO [job] ([job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_uploaddate], [job_city], [job_emp_username]) VALUES (@job_company, @job_title, @job_category, @job_position, @job_diploma, @job_spesification, @job_uploaddate, @job_city, @job_emp_username)" 
                                                        SelectCommand="SELECT * FROM [job]" 
                                                        
                                                        
                                                        
                                                        
                                                        UpdateCommand="UPDATE [job] SET [job_company] = @job_company, [job_title] = @job_title, [job_category] = @job_category, [job_position] = @job_position, [job_diploma] = @job_diploma, [job_spesification] = @job_spesification, [job_uploaddate] = @job_uploaddate, [job_city] = @job_city, [job_emp_username] = @job_emp_username WHERE [job_id] = @job_id">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="job_id" Type="Decimal" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:ControlParameter ControlID="DropDownList1" Name="job_company" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox18" Name="job_title" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="DropDownList5" Name="job_category" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox9" Name="job_position" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="diploma" Name="job_diploma" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox11" Name="job_spesification" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="Label4" Name="job_uploaddate" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="DropDownList3" Name="job_city" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox14" Name="job_emp_username" 
                                                                PropertyName="Text" Type="String" />
                                                        </InsertParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="job_company" Type="String" />
                                                            <asp:Parameter Name="job_title" Type="String" />
                                                            <asp:Parameter Name="job_category" Type="String" />
                                                            <asp:Parameter Name="job_position" Type="String" />
                                                            <asp:Parameter Name="job_diploma" Type="String" />
                                                            <asp:Parameter Name="job_spesification" Type="String" />
                                                            <asp:Parameter Name="job_uploaddate" Type="String" />
                                                            <asp:Parameter Name="job_city" Type="String" />
                                                            <asp:Parameter Name="job_emp_username" Type="String" />
                                                            <asp:Parameter Name="job_id" Type="Decimal" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td valign="top">
                                    <asp:Panel ID="Panel2" runat="server" Width="459px">
                                        <table class="style1">
                                            <tr>
                                               <td colspan="3">
                                                <div class="section-text">
							                        <h3>UPDATE FORM</h3>
                                                </div>
                                               </td>
                                            </tr>
                                            <tr>
                                            <td class="style8">
                                                Company</td>
                                            <td class="style5">
                                                :</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                                    DataSourceID="SqlDataSource3" DataTextField="company_name" 
                                                    DataValueField="company_name" class="form-control" Width="200px">
                                                </asp:DropDownList>
                                            </td>
                                            <tr>
                                                <td class="style8">
                                                    Title</td>
                                                <td class="style5">
                                                    :</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox19" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style8">
                                                    Category</td>
                                                <td class="style5">
                                                    :</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList6" runat="server" 
                                                        DataSourceID="SqlDataSource4" DataTextField="category_name" 
                                                        DataValueField="category_name" class="form-control" Width="200px">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style8">
                                                    Position</td>
                                                <td class="style5">
                                                    :</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style8">
                                                    Diploma</td>
                                                <td class="style5">
                                                    :</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList7" runat="server" class="form-control" Width="200px">
                                                    <asp:ListItem>SMA</asp:ListItem>
                                                        <asp:ListItem>D3</asp:ListItem>
                                                        <asp:ListItem>S1</asp:ListItem>
                                                        <asp:ListItem>S2</asp:ListItem>
                                                        <asp:ListItem>S3</asp:ListItem>
                                                        <asp:ListItem>Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style8">
                                                    Spesification</td>
                                                <td class="style5">
                                                    :</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style8">
                                                    City</td>
                                                <td class="style5">
                                                    :</td>
                                                <td>
                                                   <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" Width="200px">
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
                                                <td class="style8">
                                                    Employee Username</td>
                                                <td class="style5">
                                                    :</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox17" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style8">
                                                    &nbsp;</td>
                                                <td class="style5">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Panel ID="Panel1" runat="server">
                                                        <asp:Label ID="job_id" runat="server" Text="emp_id"></asp:Label>
                                                        <br />
                                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                    </asp:Panel>
                                                    <br /><asp:Button ID="Button2" runat="server" Text="Update" class="btn" 
                                                        ForeColor="White" />
                                                    <br />
                                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [job] WHERE [job_id] = @job_id" 
                                                        InsertCommand="INSERT INTO [job] ([job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_uploaddate], [job_city], [job_emp_username]) VALUES (@job_company, @job_title, @job_category, @job_position, @job_diploma, @job_spesification, @job_uploaddate, @job_city, @job_emp_username)" 
                                                        SelectCommand="SELECT * FROM [job]" 
                                                        
                                                        UpdateCommand="UPDATE job SET job_company = @job_company, job_title = @job_title, job_category = @job_category, job_position = @job_position, job_diploma = @job_diploma, job_spesification = @job_spesification, job_city = @job_city, job_emp_username = @job_emp_username WHERE (job_id = job_id.Text)">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="job_id" Type="Decimal" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:Parameter Name="job_company" Type="String" />
                                                            <asp:Parameter Name="job_title" Type="String" />
                                                            <asp:Parameter Name="job_category" Type="String" />
                                                            <asp:Parameter Name="job_position" Type="String" />
                                                            <asp:Parameter Name="job_diploma" Type="String" />
                                                            <asp:Parameter Name="job_spesification" Type="String" />
                                                            <asp:Parameter Name="job_uploaddate" Type="String" />
                                                            <asp:Parameter Name="job_city" Type="String" />
                                                            <asp:Parameter Name="job_emp_username" Type="String" />
                                                        </InsertParameters>
                                                        <UpdateParameters>
                                                            <asp:ControlParameter ControlID="DropDownList2" Name="job_company" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox19" Name="job_title" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="DropDownList6" Name="job_category" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox4" Name="job_position" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter Name="job_diploma" Type="String" 
                                                                ControlID="DropDownList7" PropertyName="SelectedValue" />
                                                            <asp:ControlParameter ControlID="TextBox7" Name="job_spesification" 
                                                                PropertyName="Text" Type="String" />
                                                            <asp:ControlParameter ControlID="DropDownList4" Name="job_city" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="TextBox17" Name="job_emp_username" 
                                                                PropertyName="Text" Type="String" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                   </td>
                                </tr>
                            </table> <br /><br /><br />
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="200px"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Text="search by job's company name" Font-Size="Smaller"></asp:Label>
                            <br /> <asp:Button ID="Button1" runat="server" class="btn" Text="search" ForeColor="White"></asp:Button>
                            <br /><br /> 
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="job_id" DataSourceID="SqlDataSource1" Width="900px" 
                                    AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="job_id" HeaderText="job_id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="job_id" />
                                    <asp:BoundField DataField="job_company" HeaderText="job_company" 
                                        SortExpression="job_company"/>
                                    <asp:BoundField DataField="job_title" HeaderText="job_title" 
                                        SortExpression="job_title" />
                                    <asp:BoundField DataField="job_category" HeaderText="job_category" 
                                        SortExpression="job_category" />
                                    <asp:BoundField DataField="job_position" HeaderText="job_position" 
                                        SortExpression="job_position" />
                                    <asp:BoundField DataField="job_diploma" HeaderText="job_diploma" 
                                        SortExpression="job_diploma" />
                                    <asp:BoundField DataField="job_spesification" HeaderText="job_spesification" 
                                        SortExpression="job_spesification" />
                                    <asp:BoundField DataField="job_uploaddate" 
                                        HeaderText="job_uploaddate" SortExpression="job_uploaddate" />
                                    <asp:BoundField DataField="job_city" HeaderText="job_city" 
                                        SortExpression="job_city" />
                                    <asp:BoundField DataField="job_emp_username" HeaderText="job_emp_username" 
                                        SortExpression="job_emp_username" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [job] WHERE [job_id] = @job_id" 
                                InsertCommand="INSERT INTO [job] ([job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_uploaddate], [job_expired], [job_city], [job_salary], [job_status], [job_emp_username]) VALUES (@job_company, @job_title, @job_category, @job_position, @job_diploma, @job_spesification, @job_uploaddate, @job_expired, @job_city, @job_salary, @job_status, @job_emp_username)" 
                                SelectCommand="SELECT * FROM [job]" 
                                
                                    
                                    
                                    
                                    UpdateCommand="UPDATE [job] SET [job_company] = @job_company, [job_title] = @job_title, [job_category] = @job_category, [job_position] = @job_position, [job_diploma] = @job_diploma, [job_spesification] = @job_spesification, [job_uploaddate] = @job_uploaddate, [job_expired] = @job_expired, [job_city] = @job_city, [job_salary] = @job_salary, [job_status] = @job_status, [job_emp_username] = @job_emp_username WHERE [job_id] = @job_id" 
                                    FilterExpression="job_company like '{0}%'">
                                <DeleteParameters>
                                    <asp:Parameter Name="job_id" Type="Decimal" />
                                </DeleteParameters>
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="job_company" 
                                        PropertyName="Text" />
                                </FilterParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="job_company" Type="String" />
                                    <asp:Parameter Name="job_title" Type="String" />
                                    <asp:Parameter Name="job_category" Type="String" />
                                    <asp:Parameter Name="job_position" Type="String" />
                                    <asp:Parameter Name="job_diploma" Type="String" />
                                    <asp:Parameter Name="job_spesification" Type="String" />
                                    <asp:Parameter Name="job_uploaddate" Type="String" />
                                    <asp:Parameter Name="job_expired" Type="String" />
                                    <asp:Parameter Name="job_city" Type="String" />
                                    <asp:Parameter Name="job_salary" Type="String" />
                                    <asp:Parameter Name="job_status" Type="String" />
                                    <asp:Parameter Name="job_emp_username" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="job_company" Type="String" />
                                    <asp:Parameter Name="job_title" Type="String" />
                                    <asp:Parameter Name="job_category" Type="String" />
                                    <asp:Parameter Name="job_position" Type="String" />
                                    <asp:Parameter Name="job_diploma" Type="String" />
                                    <asp:Parameter Name="job_spesification" Type="String" />
                                    <asp:Parameter Name="job_uploaddate" Type="String" />
                                    <asp:Parameter Name="job_expired" Type="String" />
                                    <asp:Parameter Name="job_city" Type="String" />
                                    <asp:Parameter Name="job_salary" Type="String" />
                                    <asp:Parameter Name="job_status" Type="String" />
                                    <asp:Parameter Name="job_emp_username" Type="String" />
                                    <asp:Parameter Name="job_id" Type="Decimal" />
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

