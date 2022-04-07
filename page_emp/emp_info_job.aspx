<%@ Page Title="" Language="VB" MasterPageFile="~/page_emp/MasterPage.master" AutoEventWireup="false" CodeFile="emp_info_job.aspx.vb" Inherits="page_emp_emp_info_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>JOB APPLIER INFORMATION</h3>
							<p>Job&#39;s detail information you created.<p>
							<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="app_js_username" HeaderText="app_js_username" 
                                        SortExpression="app_js_username" />
                                    <asp:BoundField DataField="job_id" HeaderText="job_id" 
                                        SortExpression="job_id" />
                                    <asp:BoundField DataField="app_status" HeaderText="app_status" 
                                        SortExpression="app_status" />
                                </Columns>
                            </asp:GridView>
							<p>
                            
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    
                                    SelectCommand="SELECT [app_js_username], [job_id], [app_status] FROM [application] WHERE ([app_emp_username] = @app_emp_username)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label3" Name="app_emp_username" 
                                        PropertyName="Text" Type="String" />
                                </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Panel ID="Panel2" runat="server">
                                    <asp:Label ID="panggil_js" runat="server" Text="Label"></asp:Label>
                                    &nbsp;<asp:Label ID="panggil_job" runat="server" Text="Label"></asp:Label>
                                    &nbsp;<asp:Label ID="panggil_status" runat="server" Text="Label"></asp:Label>
                                    &nbsp;&nbsp;
                                    <br /><br />
                            </asp:Panel>
                                <asp:Panel ID="Panel1" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td valign="top">
                                            <div class="section-text">
							                    <h4>Application Information</h4>
                                            </div>
                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                    DataSourceID="SqlDataSource2" DataKeyNames="app_id">
                                                    <Columns>
                                                        <asp:BoundField DataField="app_id" HeaderText="app_id" InsertVisible="False" 
                                                            ReadOnly="True" SortExpression="app_id" />
                                                        <asp:TemplateField HeaderText="app_cv">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image1" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler1.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_ktp">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image2" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler2.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="app_photo">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image3" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler3.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="app_health">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image4" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler4.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_skck">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image5" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler5.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_skpk">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image6" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler6.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_kk">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image7" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler7.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_certificate1">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image8" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler8.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_certificate2">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image9" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler9.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_certificate3">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image10" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler10.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_certificate4">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image11" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler11.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="app_certificate5">
                                                            <ItemTemplate>
                                                                 <asp:Image ID="Image12" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "../page_adm/Handler/Handler12.ashx?app_id={0}")%>'/>
                                                            </ItemTemplate>
                                                            </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    
                                                    SelectCommand="SELECT [app_id], [app_cv], [app_ktp], [app_photo], [app_health], [app_skck], [app_skpk], [app_kk], [app_certificate1], [app_certificate2], [app_certificate3], [app_certificate4], [app_certificate5] FROM [application] WHERE (([app_id] = @app_id) AND ([app_id] = @app_id2))">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="panggil_status" Name="app_id" 
                                                            PropertyName="Text" Type="Decimal" />
                                                        <asp:ControlParameter ControlID="panggil_status" Name="app_id2" 
                                                            PropertyName="Text" Type="Decimal" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            <br />

                                            </td>
                                            <td valign="top">
                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" valign="top">
                                                <div class="section-text">
							                    <h4>Submit Status</h4>
                                            </div>
                                            Accept this applier to this job :
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Accept</asp:ListItem>
                                                <asp:ListItem>Eject</asp:ListItem>
                                                </asp:DropDownList>
                                                &nbsp;
                                                <asp:Button ID="Button1" runat="server" ForeColor="White" Text="Button" class="btn"/>
                                                <br />
                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                    DeleteCommand="DELETE FROM [application] WHERE [app_id] = @app_id" 
                                                    InsertCommand="INSERT INTO [application] ([app_status]) VALUES (@app_status)" 
                                                    SelectCommand="SELECT [app_id], [app_status] FROM [application]" 
                                                    UpdateCommand="UPDATE [application] SET [app_status] = @app_status WHERE [app_id] = @app_id">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="app_id" Type="Decimal" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="app_status" Type="String" />
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:ControlParameter ControlID="DropDownList1" Name="app_status" 
                                                            PropertyName="SelectedValue" Type="String" />
                                                        <asp:ControlParameter ControlID="panggil_status" Name="app_id" 
                                                            PropertyName="Text" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
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

