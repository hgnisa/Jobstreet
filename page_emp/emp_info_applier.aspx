<%@ Page Title="" Language="VB" MasterPageFile="~/page_emp/MasterPage.master" AutoEventWireup="false" CodeFile="emp_info_applier.aspx.vb" Inherits="page_emp_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 589px;
        }
        .style3
        {
            width: 138px;
        }
        .style4
        {
            width: 28px;
        }
        .style5
        {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>JOB INFORMATION</h3>
							<p>Job&#39;s detail information you created.<p>
							<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="job_id" DataSourceID="SqlDataSource1" Width="1100px" Height="100px" >
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="job_id" HeaderText="ID" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="job_id" />
                                    <asp:BoundField DataField="job_company" HeaderText="COMPANY" 
                                        SortExpression="job_company" />
                                    <asp:BoundField DataField="job_title" HeaderText="TITLE" 
                                        SortExpression="job_title" />
                                    <asp:BoundField DataField="job_category" HeaderText="CATEGORY" 
                                        SortExpression="job_category" />
                                    <asp:BoundField DataField="job_position" HeaderText="POSITION" 
                                        SortExpression="job_position" />
                                    <asp:BoundField DataField="job_diploma" HeaderText="DIPLOMA" 
                                        SortExpression="job_diploma" />
                                    <asp:BoundField DataField="job_spesification" HeaderText="SPESIFICATION" 
                                        SortExpression="job_spesification" />
                                    <asp:BoundField DataField="job_uploaddate" HeaderText="UPLOAD DATE" 
                                        SortExpression="job_uploaddate" />
                                    <asp:BoundField DataField="job_city" HeaderText="CITY" 
                                        SortExpression="job_city" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [job] WHERE [job_id] = @job_id" 
                                InsertCommand="INSERT INTO [job] ([job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_uploaddate], [job_city]) VALUES (@job_company, @job_title, @job_category, @job_position, @job_diploma, @job_spesification, @job_uploaddate, @job_city)" 
                                SelectCommand="SELECT [job_id], [job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_uploaddate], [job_city] FROM [job] WHERE (([job_emp_username] = @job_emp_username) AND ([job_emp_username] = @job_emp_username2))" 
                                
                                UpdateCommand="UPDATE [job] SET [job_company] = @job_company, [job_title] = @job_title, [job_category] = @job_category, [job_position] = @job_position, [job_diploma] = @job_diploma, [job_spesification] = @job_spesification, [job_uploaddate] = @job_uploaddate, [job_city] = @job_city WHERE [job_id] = @job_id">
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
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label3" Name="job_emp_username" 
                                        PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="Label3" Name="job_emp_username2" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="job_company" Type="String" />
                                    <asp:Parameter Name="job_title" Type="String" />
                                    <asp:Parameter Name="job_category" Type="String" />
                                    <asp:Parameter Name="job_position" Type="String" />
                                    <asp:Parameter Name="job_diploma" Type="String" />
                                    <asp:Parameter Name="job_spesification" Type="String" />
                                    <asp:Parameter Name="job_uploaddate" Type="String" />
                                    <asp:Parameter Name="job_city" Type="String" />
                                    <asp:Parameter Name="job_id" Type="Decimal" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
						    <asp:Panel ID="Panel1" runat="server">
                            <br /><br /><br />
                            <table class="style1">
                                            <tr>
                                               <td colspan="3">
                                                <div class="section-text">
							                        <h3>UPDATE FORM</h3>
                                                </div>
                                               </td>
                                            </tr>
                                            <tr>
                                            <td class="style5">
                                                Company</td>
                                            <td class="style4">
                                                :</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                                    DataSourceID="SqlDataSource2" DataTextField="company_name" 
                                                    DataValueField="company_name" class="form-control" Width="200px">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    SelectCommand="SELECT [company_name] FROM [company] WHERE ([company_emp_username] = @company_emp_username)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="Label3" Name="company_emp_username" 
                                                            PropertyName="Text" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                            <tr>
                                                <td class="style5">
                                                    Title</td>
                                                <td class="style4">
                                                    :</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox19" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Category</td>
                                                <td class="style4">
                                                    :</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList6" runat="server" 
                                                        DataSourceID="SqlDataSource3" DataTextField="category_name" 
                                                        DataValueField="category_name" class="form-control" Width="200px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT [category_name] FROM [category]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Position</td>
                                                <td class="style4">
                                                    :</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    Diploma</td>
                                                <td class="style4">
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
                                                <td class="style5">
                                                    Spesification</td>
                                                <td class="style4">
                                                    :</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5">
                                                    City</td>
                                                <td class="style4">
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
                                                <td class="style5">
                                                    &nbsp;</td>
                                                <td class="style4">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Panel ID="Panel2" runat="server">
                                                        <asp:Label ID="job_id" runat="server" Text="emp_id"></asp:Label>
                                                        <br />
                                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                    </asp:Panel>
                                                    <br /><asp:Button ID="Button2" runat="server" Text="Update" class="btn" 
                                                        ForeColor="White" />
                                                    <br />
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

