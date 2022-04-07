<%@ Page Title="" Language="VB" MasterPageFile="~/page_js/MasterPage.master" AutoEventWireup="false" CodeFile="js_application.aspx.vb" Inherits="page_js_js_application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 217px;
        }
        .style2
        {
            width: 240px;
        }
        .style3
        {
            width: 473px;
        }
        .style4
        {
            width: 467px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
        <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>Your Submitted Application</h3>
                            <table class="style3">
                                <tr>
                                    <td class="style4">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource1" Width="407px">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="job_id" HeaderText="JOB TITLE" 
                                        SortExpression="job_id" />
                                </Columns>
                                </asp:GridView>
                                        <asp:Panel ID="Panel16" runat="server" Width="188px">
                                            <asp:Label ID="panggil" runat="server" Text="Label"></asp:Label>
                                            &nbsp;<asp:Label ID="panggilcompany" runat="server" Text="Label"></asp:Label>
                                        </asp:Panel>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [job_id] FROM [application] WHERE ([app_js_username] = @app_js_username)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label2" Name="app_js_username" 
                                            PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                        <br />
                                        <asp:Panel ID="Panel17" runat="server">
                                            <table class="style7">
                                                <tr>
                                                    <td class="style2" valign="top">
                                                        <div class="section-text">
							                            <h4>Your Application status</h4>
                                                        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                                                            DataSourceID="SqlDataSource3" Height="50px" Width="125px">
                                                            <Fields>
                                                                <asp:BoundField DataField="app_status" HeaderText=" " 
                                                                    SortExpression="app_status" />
                                                            </Fields>
                                                        </asp:DetailsView>
                                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                            SelectCommand="SELECT [app_status] FROM [application] WHERE ([app_js_username] = @app_js_username)">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="Label2" Name="app_js_username" 
                                                                    PropertyName="Text" Type="String" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                        <br />
                                                    </td>
                                                    <td class="style1" valign="top">
                                                        <div class="section-text">
							                            <h4>&nbsp;</h4>
                                                        </div>
                                                        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                                                            DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                                                            <Fields>
                                                                <asp:BoundField DataField="company_name" HeaderText="company_name" 
                                                                    SortExpression="company_name" />
                                                                <asp:BoundField DataField="company_address" HeaderText="company_address" 
                                                                    SortExpression="company_address" />
                                                                <asp:BoundField DataField="company_city" HeaderText="company_city" 
                                                                    SortExpression="company_city" />
                                                                <asp:BoundField DataField="company_description" 
                                                                    HeaderText="company_description" SortExpression="company_description" />
                                                                <asp:BoundField DataField="company_email" HeaderText="company_email" 
                                                                    SortExpression="company_email" />
                                                                <asp:BoundField DataField="company_telp" HeaderText="company_telp" 
                                                                    SortExpression="company_telp" />
                                                            </Fields>
                                                        </asp:DetailsView>
                                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                            SelectCommand="SELECT [company_name], [company_address], [company_city], [company_description], [company_email], [company_telp] FROM [company] WHERE ([company_name] = @company_name)">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="panggilcompany" Name="company_name" 
                                                                    PropertyName="Text" Type="String" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                        <br /><br />

                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                        <br /><br />
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

