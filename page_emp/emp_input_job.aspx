<%@ Page Title="" Language="VB" MasterPageFile="~/page_emp/MasterPage.master" AutoEventWireup="false" CodeFile="emp_input_job.aspx.vb" Inherits="page_emp_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 109px;
        }
        .style2
        {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>FORM INSERT JOB</h3>
							<p>Insert a new job from your company</p>
							<table style="width: 441px">
                                <tr>
                                    <td class="style1">
                                        Company</td>
                                    <td class="style2">
                                        :</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="companyList" 
                                            DataTextField="company_name" DataValueField="company_name" class="form-control" Width="200px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="companyList" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [company_name] FROM [company] WHERE ([company_emp_username] = @company_emp_username)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Label3" Name="company_emp_username" 
                                                    PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Title</td>
                                    <td class="style2">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="job_title" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Category</td>
                                    <td class="style2">
                                        :</td>
                                    <td>
                                        <asp:DropDownList ID="job_category" runat="server" DataSourceID="menuCategory1" 
                                            DataTextField="category_name" DataValueField="category_name" class="form-control" Width="200px">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="menuCategory1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [category_name] FROM [category]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Position</td>
                                    <td class="style2">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="Job_position" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Min Diploma</td>
                                    <td class="style2">
                                        :</td>
                                    <td>
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
                                    <td class="style1">
                                        Spesification</td>
                                    <td class="style2">
                                        :</td>
                                    <td>
                                        <asp:TextBox ID="job_spec" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Job City</td>
                                    <td class="style2">
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
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        &nbsp;</td>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        &nbsp;</td>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Add" class="btn" 
                                            ForeColor="White" />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [job] WHERE [job_id] = @job_id" 
                                            InsertCommand="INSERT INTO [job] ([job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_city], [job_emp_username]) VALUES (@job_company, @job_title, @job_category, @job_position, @job_diploma, @job_spesification, @job_city, @job_emp_username)" 
                                            SelectCommand="SELECT [job_id], [job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_city], [job_emp_username] FROM [job]" 
                                            UpdateCommand="UPDATE [job] SET [job_company] = @job_company, [job_title] = @job_title, [job_category] = @job_category, [job_position] = @job_position, [job_diploma] = @job_diploma, [job_spesification] = @job_spesification, [job_city] = @job_city, [job_emp_username] = @job_emp_username WHERE [job_id] = @job_id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="job_id" Type="Decimal" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:ControlParameter ControlID="DropDownList2" Name="job_company" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="job_title" Name="job_title" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="job_category" Name="job_category" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="Job_position" Name="job_position" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="diploma" Name="job_diploma" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="job_spec" Name="job_spesification" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="DropDownList1" Name="job_city" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="Label3" Name="job_emp_username" 
                                                    PropertyName="Text" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="job_company" Type="String" />
                                                <asp:Parameter Name="job_title" Type="String" />
                                                <asp:Parameter Name="job_category" Type="String" />
                                                <asp:Parameter Name="job_position" Type="String" />
                                                <asp:Parameter Name="job_diploma" Type="String" />
                                                <asp:Parameter Name="job_spesification" Type="String" />
                                                <asp:Parameter Name="job_city" Type="String" />
                                                <asp:Parameter Name="job_emp_username" Type="String" />
                                                <asp:Parameter Name="job_id" Type="Decimal" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table> 
						    <br />
                            <asp:Panel ID="Panel1" runat="server">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
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

