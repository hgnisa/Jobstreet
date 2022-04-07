<%@ Page Title="" Language="VB" MasterPageFile="~/page_js/MasterPage.master" AutoEventWireup="false" CodeFile="js_home.aspx.vb" Inherits="page_js_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 660px;
        }
        .style2
        {
            width: 31px;
        }
        .style4
        {
            width: 65px;
        }
        .style5
        {
            width: 72px;
        }
        .style9
        {
            width: 25px;
        }
        .style10
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
<section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
                            <asp:Panel ID="Panel3" runat="server">
                            <div class="section-text">
                            <h4>You are accepted on <asp:Label ID="accept_company" runat="server" Text="Label"></asp:Label>!
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    PostBackUrl="~/page_js/js_application.aspx">Click</asp:LinkButton>
                                &nbsp;here to contact the company. </h4>
                            </div>

                            </asp:Panel>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [job_id] FROM [application] WHERE ([app_status] = @app_status)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Accept" Name="app_status" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
							<h3>JOB LIST</h3>
							<p>Job Recommendation, similar with your category background <br />
                               Click 'select' to apply the job.</p>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource2" Width="406px">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="job_company" HeaderText="COMPANY" 
                                        SortExpression="job_company" />
                                    <asp:BoundField DataField="job_title" HeaderText="TITLE" 
                                        SortExpression="job_title" />
                                </Columns>
                            </asp:GridView>
                            
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [job_company], [job_title] FROM [job] WHERE ([job_category] = @job_category)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label5" Name="job_category" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br /> 
                            <br />
                            
							<p><h4> All Job  </h4></p>
                            <p>Click 'select' to apply the job.</p> 
                            <table class="style1">
                                <tr>
                                    <td class="style2">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        DataSourceID="SqlDataSource1" Width="1100px" >
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="job_company" HeaderText="COMPANY" 
                                                SortExpression="job_company" />
                                            <asp:BoundField DataField="job_title" HeaderText="TITLE" 
                                                SortExpression="job_title" />
                                            <asp:BoundField DataField="job_category" HeaderText="CATEGORY" 
                                                SortExpression="job_category" />
                                        </Columns>
                                        </asp:GridView> 
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [job_company], [job_title], [job_category] FROM [job]">
                                        </asp:SqlDataSource>
                                        <asp:Label ID="Label3" runat="server" ForeColor="#6699FF"></asp:Label>
                                        <br /><br />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                           </table>
                        </p>
                            <asp:Panel ID="Panel2" runat="server">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                &nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        <asp:Panel ID="Panel1" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="style5" width="500px" valign="top">
                                        <div class="section-text">
							            <h3>JOB DETAIL</h3>
                                        </div>
                                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                            CellPadding="4" DataSourceID="showDetailJob" GridLines="Horizontal" 
                                            Height="50px" Width="300px" ForeColor="Black">
                                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <Fields>
                                                <asp:BoundField DataField="job_company" HeaderText="COMPANY" 
                                                    SortExpression="job_company" HeaderStyle-Width="200px" >
                                                <HeaderStyle Width="200px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="job_title" HeaderText="TITLE" 
                                                    SortExpression="job_title" HeaderStyle-Width="400px" />
                                                <asp:BoundField DataField="job_category" HeaderText="CATEGORY" 
                                                    SortExpression="job_category" />
                                                <asp:BoundField DataField="job_position" HeaderText="POSITION" 
                                                    SortExpression="job_position" />
                                                <asp:BoundField DataField="job_diploma" HeaderText="DIPLOMA" 
                                                    SortExpression="job_diploma" />
                                                <asp:BoundField DataField="job_spesification" HeaderText="JOB SPESIFICATION                                                                                                                                                                                                                                " 
                                                    SortExpression="job_spesification" HeaderStyle-Width="400px">
                                                <HeaderStyle Width="100px" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="job_city" HeaderText="CITY" 
                                                    SortExpression="job_city" />
                                            </Fields>
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" 
                                                Width="200px" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        </asp:DetailsView>
                                        <asp:SqlDataSource ID="showDetailJob" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            
                                            SelectCommand="SELECT [job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_city] FROM [job]">
                                        </asp:SqlDataSource>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td valign="top">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="style4" valign="top">
                                        <div class="section-text">
                                            <h3>
                                                APPLY FORM</h3>
                                        </div>
                                        Use the form below to create a new application.
                                        <br />
                                        Note : Convert your document into jpeg extension<br /> &nbsp;<table class="style1">
                                            <tr>
                                                <td class="style10" colspan="3" valign="top">
                                                    Apply to &nbsp;
                                                    <asp:Label ID="Label4" runat="server" ForeColor="#6699FF" Text="Label"></asp:Label>
                                                     <br /><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Curiculem Vitae</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Identity Card (KTP)</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Pas Photo</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload3" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Healthy Letter</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload4" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    SKCK</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload5" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    SKPK</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload6" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    KK</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload7" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Certificate 1</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload8" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Certificate 2</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload9" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Certificate 3</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload10" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Certificate 4</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload11" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    Certificate 5</td>
                                                <td class="style9" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:FileUpload ID="FileUpload12" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" valign="top">
                                                    &nbsp;</td>
                                                <td class="style9" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <br />
                                                    <asp:Button ID="Button1" runat="server" class="btn" ForeColor="White" 
                                                        Text="Apply" />
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                        <p>
                                        </p>
                                        <p>
                                        </p>
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
        <asp:Label ID="Label1" runat="server" Text="You loged as "></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="#6699FF"></asp:Label>
	</p>
</asp:Content>

