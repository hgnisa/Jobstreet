<%@ Page Title="" Language="VB" MasterPageFile="~/page_adm/MasterPage.master" AutoEventWireup="false" CodeFile="admin_category.aspx.vb" Inherits="page_adm_admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 418px;
        }
        .style3
        {
            width: 106px;
        }
        .style4
        {
            width: 110px;
        }
        .style5
        {
            width: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>DATA CATEGORY</h3>
							<p>Data displays on table below. Use INSERT FORM to insert a new data category. 
                                Click &#39;select&#39; to update data categpry by UPDATE FORM</p>
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
                                                <td class="style3" valign="top">
                                                    Category Name</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style3" valign="top">
                                                    &nbsp;</td>
                                                <td class="style5" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <br /><asp:Button ID="Button3" runat="server" Text="Insert" class="btn" 
                                                        ForeColor="White"/>
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" 
                                                        InsertCommand="INSERT INTO [category] ([category_name]) VALUES (@category_name)" 
                                                        SelectCommand="SELECT * FROM [category]" 
                                                        
                                                        UpdateCommand="UPDATE [category] SET [category_name] = @category_name WHERE [category_id] = @category_id">
                                                        <DeleteParameters>
                                                            <asp:Parameter Name="category_id" Type="Decimal" />
                                                        </DeleteParameters>
                                                        <InsertParameters>
                                                            <asp:ControlParameter ControlID="TextBox6" Name="category_name" 
                                                                PropertyName="Text" Type="String" />
                                                        </InsertParameters>
                                                        <UpdateParameters>
                                                            <asp:Parameter Name="category_name" Type="String" />
                                                            <asp:Parameter Name="category_id" Type="Decimal" />
                                                        </UpdateParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td valign="top">
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
                                                    Category Name</td>
                                                <td class="style5" valign="top">
                                                    :</td>
                                                <td valign="top">
                                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4" valign="top">
                                                    &nbsp;</td>
                                                <td class="style5" valign="top">
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <asp:Panel ID="Panel1" runat="server">
                                                        <asp:Label ID="category_id" runat="server" Text="admin_id"></asp:Label>
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
                            <asp:Label ID="Label3" runat="server" Text="search by category's name" Font-Size="Smaller"></asp:Label>
                            <br /> <asp:Button ID="Button1" runat="server" class="btn" Text="search" ForeColor="White"></asp:Button>
                            <br /><br /> 
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="category_id" DataSourceID="SqlDataSource1" Width="900px" 
                                    AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="category_id" HeaderText="category_id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="category_id" />
                                    <asp:BoundField DataField="category_name" HeaderText="category_name" 
                                        SortExpression="category_name" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" 
                                InsertCommand="INSERT INTO [category] ([category_name]) VALUES (@category_name)" 
                                SelectCommand="SELECT * FROM [category]" 
                                
                                    
                                    UpdateCommand="UPDATE [category] SET [category_name] = @category_name WHERE [category_id] = @category_id" 
                                    FilterExpression="category_name like '{0}%'">
                                <DeleteParameters>
                                    <asp:Parameter Name="category_id" Type="Decimal" />
                                </DeleteParameters>
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="category_name" 
                                        PropertyName="Text" />
                                </FilterParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="category_name" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="category_name" Type="String" />
                                    <asp:Parameter Name="category_id" Type="Decimal" />
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

