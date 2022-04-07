<%@ Page Title="" Language="VB" MasterPageFile="~/page_adm/MasterPage.master" AutoEventWireup="false" CodeFile="admin_message.aspx.vb" Inherits="page_adm_message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 426px;
        }
        .style4
        {
            width: 96px;
        }
        .style5
        {
            width: 82px;
        }
        .style6
        {
            width: 23px;
        }
        .style7
        {
            width: 25px;
        }
        .style8
        {
            width: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
<section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>&nbsp;DATA MESSAGE</h3>
							<p>Data displays on table below. Use INSERT FORM to insert a new data message. Click 
                                &#39;select&#39; to update data message by UPDATE FORM</p>
                            <br /><br />
                            <p>
                            <table class="style1">
                                <tr>
                                    <td>
                                        <table class="style1">
                                            <tr>
                                               <td colspan="3">
                                                <div class="section-text">
							                        <h3>INSERT FORM</h3>
                                                </div>
                                               </td>
                                            </tr>
                                            <tr>
                                    <td class="style5" valign="top">
                                        Name</td>
                                    <td class="style6" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="fname" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" valign="top">
                                        Email</td>
                                    <td class="style6" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="lname" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" valign="top">
                                        Message</td>
                                    <td class="style6" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="email" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" valign="top">
                                        &nbsp;</td>
                                    <td class="style6" valign="top">
                                        &nbsp;</td>
                                    <td class="style4" valign="top">
                                        <asp:Button ID="Button3" runat="server" Text="Create" class="btn" ForeColor="White" />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [saran] WHERE [saran_id] = @saran_id" 
                                            InsertCommand="INSERT INTO [saran] ([saran_nama], [saran_email], [saran_isi]) VALUES (@saran_nama, @saran_email, @saran_isi)" 
                                            SelectCommand="SELECT * FROM [saran]" 
                                            
                                            UpdateCommand="UPDATE [saran] SET [saran_nama] = @saran_nama, [saran_email] = @saran_email, [saran_isi] = @saran_isi WHERE [saran_id] = @saran_id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="saran_id" Type="Decimal" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:ControlParameter ControlID="fname" Name="saran_nama" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="lname" Name="saran_email" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="email" Name="saran_isi" PropertyName="Text" 
                                                    Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="saran_nama" Type="String" />
                                                <asp:Parameter Name="saran_email" Type="String" />
                                                <asp:Parameter Name="saran_isi" Type="String" />
                                                <asp:Parameter Name="saran_id" Type="Decimal" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                                    </td>
                                    <td>
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
                                    <td class="style8" valign="top">
                                        First Name</td>
                                    <td class="style7" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8" valign="top">
                                        Email</td>
                                    <td class="style7" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8" valign="top">
                                        Message</td>
                                    <td class="style7" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8" valign="top">
                                        &nbsp;</td>
                                    <td class="style7" valign="top">
                                        &nbsp;</td>
                                    <td class="style4" valign="top">
                                        <asp:Button ID="Button2" runat="server" Text="Create" class="btn" ForeColor="White" />
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [saran] WHERE [saran_id] = @saran_id" 
                                            InsertCommand="INSERT INTO [saran] ([saran_nama], [saran_email], [saran_isi]) VALUES (@saran_nama, @saran_email, @saran_isi)" 
                                            SelectCommand="SELECT * FROM [saran]" 
                                            UpdateCommand="UPDATE [saran] SET [saran_nama] = @saran_nama, [saran_email] = @saran_email, [saran_isi] = @saran_isi WHERE [saran_id] =message_id.Text">
                                            <DeleteParameters>
                                                <asp:Parameter Name="saran_id" Type="Decimal" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="saran_nama" Type="String" />
                                                <asp:Parameter Name="saran_email" Type="String" />
                                                <asp:Parameter Name="saran_isi" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:ControlParameter ControlID="TextBox2" Name="saran_nama" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="TextBox3" Name="saran_email" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="TextBox4" Name="saran_isi" PropertyName="Text" 
                                                    Type="String" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <asp:Panel ID="Panel3" runat="server">
                                            <asp:Label ID="message_id" runat="server" ForeColor="#6699FF" Text="Label"></asp:Label>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                                    </asp:Panel>
                                   </td>
                                </tr>
                            </table> <br /><br /><br />
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="200px"></asp:TextBox>
                           <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> <asp:Label ID="Label3" runat="server" Text="search by job message's sender name" Font-Size="Smaller"></asp:Label>
                            <br /> <asp:Button ID="Button1" runat="server" class="btn" Text="search" 
                                    ForeColor="White" CausesValidation="False"></asp:Button>
                            <br />
                            <br /> 
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="saran_id" DataSourceID="SqlDataSource1" Width="900px" 
                                    AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="saran_id" HeaderText="saran_id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="saran_id" />
                                    <asp:BoundField DataField="saran_nama" HeaderText="saran_nama" 
                                        SortExpression="saran_nama" />
                                    <asp:BoundField DataField="saran_email" HeaderText="saran_email" 
                                        SortExpression="saran_email" />
                                    <asp:BoundField DataField="saran_isi" HeaderText="saran_isi" 
                                        SortExpression="saran_isi" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [saran] WHERE [saran_id] = @saran_id" 
                                InsertCommand="INSERT INTO [saran] ([saran_nama], [saran_email], [saran_isi]) VALUES (@saran_nama, @saran_email, @saran_isi)" 
                                SelectCommand="SELECT * FROM [saran]" 
                                
                                    
                                    
                                    
                                    UpdateCommand="UPDATE [saran] SET [saran_nama] = @saran_nama, [saran_email] = @saran_email, [saran_isi] = @saran_isi WHERE [saran_id] = @saran_id" 
                                    FilterExpression="saran_nama like '{0}%'">
                                <DeleteParameters>
                                    <asp:Parameter Name="saran_id" Type="Decimal" />
                                </DeleteParameters>
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="saran_nama " 
                                        PropertyName="Text" />
                                </FilterParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="saran_nama" Type="String" />
                                    <asp:Parameter Name="saran_email" Type="String" />
                                    <asp:Parameter Name="saran_isi" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="saran_nama" Type="String" />
                                    <asp:Parameter Name="saran_email" Type="String" />
                                    <asp:Parameter Name="saran_isi" Type="String" />
                                    <asp:Parameter Name="saran_id" Type="Decimal" />
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

