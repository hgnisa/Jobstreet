<%@ Page Title="" Language="VB" MasterPageFile="~/page_adm/MasterPage.master" AutoEventWireup="false" CodeFile="admin_application.aspx.vb" Inherits="page_adm_admin_application" %>

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
							<h3>Your Submited Application<br /><br />
                        </div>

                            
                            
                            
                        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" 
                            AutoGenerateColumns="False" Width="167px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="job_id" HeaderText="job_id" 
                                    SortExpression="job_id" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [job_id] FROM [application] WHERE ([app_js_username] = @app_js_username)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label2" Name="app_js_username" 
                                    PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="app_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="app_id" HeaderText="app_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="app_id" />
            <asp:TemplateField HeaderText="app_cv">
                <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler1.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_ktp">
                <ItemTemplate>
                     <asp:Image ID="Image2" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler2.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="app_photo">
                <ItemTemplate>
                     <asp:Image ID="Image3" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler3.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="app_health">
                <ItemTemplate>
                     <asp:Image ID="Image4" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler4.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_skck">
                <ItemTemplate>
                     <asp:Image ID="Image5" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler5.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_skpk">
                <ItemTemplate>
                     <asp:Image ID="Image6" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler6.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_kk">
                <ItemTemplate>
                     <asp:Image ID="Image7" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler7.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_certificate1">
                <ItemTemplate>
                     <asp:Image ID="Image8" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler8.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_certificate2">
                <ItemTemplate>
                     <asp:Image ID="Image9" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler9.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_certificate3">
                <ItemTemplate>
                     <asp:Image ID="Image10" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler10.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_certificate4">
                <ItemTemplate>
                     <asp:Image ID="Image11" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler11.ashx?app_id={0}")%>'/>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="app_certificate5">
                <ItemTemplate>
                     <asp:Image ID="Image12" runat="server" Width="200px" height="300px" ImageUrl='<%#Eval("app_id", "Handler/Handler12.ashx?app_id={0}")%>'/>
                </ItemTemplate>
                </asp:TemplateField>
            <asp:BoundField DataField="app_js_username" HeaderText="Applier" InsertVisible="False" 
                ReadOnly="True" SortExpression="app_id" />
            <asp:BoundField DataField="job_id" HeaderText="Job Title" InsertVisible="False" 
                ReadOnly="True" SortExpression="app_id" />
            <asp:BoundField DataField="app_status" HeaderText="Status" InsertVisible="False" 
                ReadOnly="True" SortExpression="app_id" />
        </Columns>
    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="section-text">
							            <h3>Your Submited Application<br /><br />
                                    </div>
<asp:GridView ID="GridView3" runat="server"></asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br /> 
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [application] WHERE [app_id] = @app_id" 
        InsertCommand="INSERT INTO [application] ([app_cv], [app_ktp], [app_photo], [app_health], [app_skck], [app_skpk], [app_kk], [app_certificate1], [app_certificate2], [app_certificate3], [app_certificate4], [app_certificate5]) VALUES (@app_cv, @app_ktp, @app_photo, @app_health, @app_skck, @app_skpk, @app_kk, @app_certificate1, @app_certificate2, @app_certificate3, @app_certificate4, @app_certificate5)" 
        SelectCommand="SELECT * FROM [application]" 
        
        UpdateCommand="UPDATE [application] SET [app_cv] = @app_cv, [app_ktp] = @app_ktp, [app_photo] = @app_photo, [app_health] = @app_health, [app_skck] = @app_skck, [app_skpk] = @app_skpk, [app_kk] = @app_kk, [app_certificate1] = @app_certificate1, [app_certificate2] = @app_certificate2, [app_certificate3] = @app_certificate3, [app_certificate4] = @app_certificate4, [app_certificate5] = @app_certificate5 WHERE [app_id] = @app_id" 
        FilterExpression="app_id like '{0}%'">
        <DeleteParameters>
            <asp:Parameter Name="app_id" Type="Decimal" />
        </DeleteParameters>
        <FilterParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="app_id" PropertyName="Text" />
        </FilterParameters>
        <InsertParameters>
            <asp:Parameter Name="app_cv" Type="Object" />
            <asp:Parameter Name="app_ktp" Type="Object" />
            <asp:Parameter Name="app_photo" Type="Object" />
            <asp:Parameter Name="app_health" Type="Object" />
            <asp:Parameter Name="app_skck" Type="Object" />
            <asp:Parameter Name="app_skpk" Type="Object" />
            <asp:Parameter Name="app_kk" Type="Object" />
            <asp:Parameter Name="app_certificate1" Type="Object" />
            <asp:Parameter Name="app_certificate2" Type="Object" />
            <asp:Parameter Name="app_certificate3" Type="Object" />
            <asp:Parameter Name="app_certificate4" Type="Object" />
            <asp:Parameter Name="app_certificate5" Type="Object" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="app_cv" Type="Object" />
            <asp:Parameter Name="app_ktp" Type="Object" />
            <asp:Parameter Name="app_photo" Type="Object" />
            <asp:Parameter Name="app_health" Type="Object" />
            <asp:Parameter Name="app_skck" Type="Object" />
            <asp:Parameter Name="app_skpk" Type="Object" />
            <asp:Parameter Name="app_kk" Type="Object" />
            <asp:Parameter Name="app_certificate1" Type="Object" />
            <asp:Parameter Name="app_certificate2" Type="Object" />
            <asp:Parameter Name="app_certificate3" Type="Object" />
            <asp:Parameter Name="app_certificate4" Type="Object" />
            <asp:Parameter Name="app_certificate5" Type="Object" />
            <asp:Parameter Name="app_id" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
                            </h3>
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

