<%@ Page Title="" Language="VB" MasterPageFile="~/page_adm/MasterPage.master" AutoEventWireup="false" CodeFile="admin_js.aspx.vb" Inherits="page_adm_admin_js" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 513px;
        }
        .style2
        {
            width: 159px;
        }
        .style3
        {
            width: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <section>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="section-text">
							<h3>&nbsp;DATA JOB SEEKER</h3>
							<p>Data displays on table below. Use INSERT FORM to insert a new data job seeker. 
                                Click &#39;select&#39; to update data job seeker by UPDATE FORM.</p>
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
                                    <td class="style2" valign="top">
                                        First Name</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="fname" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Last Name</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="lname" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Gender</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:DropDownList ID="gender" runat="server" class="form-control" Width="200px">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Email</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="email" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Telephone</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="telp" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Address</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="address" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        City</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
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
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Diploma</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:DropDownList ID="diploma" runat="server" class="form-control" Width="200px">
                                            <asp:ListItem>SMA</asp:ListItem>
                                            <asp:ListItem>D3</asp:ListItem>
                                            <asp:ListItem>S1</asp:ListItem>
                                            <asp:ListItem>S2</asp:ListItem>
                                            <asp:ListItem>S3</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Alumna</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="alumna" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Graduate Year</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="graduateyear" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Background Category</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:DropDownList ID="category" runat="server" DataSourceID="menuCategory" 
                                            DataTextField="category_name" DataValueField="category_name" class="form-control" Width="200px">
                                        </asp:DropDownList>
                                        <br />
                                        <asp:SqlDataSource ID="menuCategory" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [category_name] FROM [category]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Username</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="username" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Password</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="password" runat="server" TextMode="Password" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        &nbsp;</td>
                                    <td class="style3" valign="top">
                                        &nbsp;</td>
                                    <td class="style4" valign="top">
                                        <asp:Button ID="Button3" runat="server" Text="Create" class="btn" ForeColor="White" />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [jobseeker] WHERE [js_id] = @js_id" 
                                            InsertCommand="INSERT INTO [jobseeker] ([js_firstname], [js_lastname], [js_gender], [js_email], [js_telp], [js_address], [js_city], [js_username], [js_password], [js_diploma], [js_alumna], [js_graduateyear], [js_category]) VALUES (@js_firstname, @js_lastname, @js_gender, @js_email, @js_telp, @js_address, @js_city, @js_username, @js_password, @js_diploma, @js_alumna, @js_graduateyear, @js_category)" 
                                            SelectCommand="SELECT * FROM [jobseeker]" 
                                            UpdateCommand="UPDATE [jobseeker] SET [js_firstname] = @js_firstname, [js_lastname] = @js_lastname, [js_gender] = @js_gender, [js_email] = @js_email, [js_telp] = @js_telp, [js_address] = @js_address, [js_city] = @js_city, [js_username] = @js_username, [js_password] = @js_password, [js_diploma] = @js_diploma, [js_alumna] = @js_alumna, [js_graduateyear] = @js_graduateyear, [js_category] = @js_category WHERE [js_id] = @js_id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="js_id" Type="Decimal" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:ControlParameter ControlID="fname" Name="js_firstname" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="lname" Name="js_lastname" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="gender" Name="js_gender" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="email" Name="js_email" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="telp" Name="js_telp" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="address" Name="js_address" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="DropDownList1" Name="js_city" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="username" Name="js_username" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="password" Name="js_password" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="diploma" Name="js_diploma" 
                                                    PropertyName="SelectedValue" Type="String" />
                                                <asp:ControlParameter ControlID="alumna" Name="js_alumna" PropertyName="Text" 
                                                    Type="String" />
                                                <asp:ControlParameter ControlID="graduateyear" Name="js_graduateyear" 
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="category" Name="js_category" 
                                                    PropertyName="SelectedValue" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="js_firstname" Type="String" />
                                                <asp:Parameter Name="js_lastname" Type="String" />
                                                <asp:Parameter Name="js_gender" Type="String" />
                                                <asp:Parameter Name="js_email" Type="String" />
                                                <asp:Parameter Name="js_telp" Type="String" />
                                                <asp:Parameter Name="js_address" Type="String" />
                                                <asp:Parameter Name="js_city" Type="String" />
                                                <asp:Parameter Name="js_username" Type="String" />
                                                <asp:Parameter Name="js_password" Type="String" />
                                                <asp:Parameter Name="js_diploma" Type="String" />
                                                <asp:Parameter Name="js_alumna" Type="String" />
                                                <asp:Parameter Name="js_graduateyear" Type="String" />
                                                <asp:Parameter Name="js_category" Type="String" />
                                                <asp:Parameter Name="js_id" Type="Decimal" />
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
                                    <td class="style2" valign="top">
                                        First Name</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Last Name</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Gender</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" Width="200px">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Email</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Telephone</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Address</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        City</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
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
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Diploma</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" Width="200px">
                                            <asp:ListItem>SMA</asp:ListItem>
                                            <asp:ListItem>D3</asp:ListItem>
                                            <asp:ListItem>S1</asp:ListItem>
                                            <asp:ListItem>S2</asp:ListItem>
                                            <asp:ListItem>S3</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Alumna</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox7" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Graduate Year</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Background Category</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="menuCategory" 
                                            DataTextField="category_name" DataValueField="category_name" class="form-control" Width="200px">
                                        </asp:DropDownList>
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [category_name] FROM [category]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Username</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox9" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        Password</td>
                                    <td class="style3" valign="top">
                                        :</td>
                                    <td class="style4" valign="top">
                                        <asp:TextBox ID="TextBox10" runat="server" class="form-control" Width="200px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2" valign="top">
                                        &nbsp;</td>
                                    <td class="style3" valign="top">
                                        &nbsp;</td>
                                    <td class="style4" valign="top">
                                        <asp:Button ID="Button2" runat="server" Text="Update" class="btn" 
                                            ForeColor="White" />
                                        <asp:Panel ID="Panel3" runat="server">
                                            <asp:Label ID="Label5" runat="server" ForeColor="#6699FF" Text="Label"></asp:Label>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                                    </asp:Panel>
                                   </td>
                                </tr>
                            </table> <br /><br /><br />
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="200px"></asp:TextBox>
                           <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> <asp:Label ID="Label3" runat="server" Text="search by job seeker's last name" Font-Size="Smaller"></asp:Label>
                            <br /> <asp:Button ID="Button1" runat="server" class="btn" Text="search" ForeColor="White"></asp:Button>
                            <br />
                            <br /> 
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="js_id" DataSourceID="SqlDataSource1" Width="900px" 
                                    AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="js_id" HeaderText="js_id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="js_id" />
                                    <asp:BoundField DataField="js_firstname" HeaderText="js_firstname" 
                                        SortExpression="js_firstname" />
                                    <asp:BoundField DataField="js_lastname" HeaderText="js_lastname" 
                                        SortExpression="js_lastname" />
                                    <asp:BoundField DataField="js_gender" HeaderText="js_gender" 
                                        SortExpression="js_gender" />
                                    <asp:BoundField DataField="js_email" HeaderText="js_email" 
                                        SortExpression="js_email" />
                                    <asp:BoundField DataField="js_telp" HeaderText="js_telp" 
                                        SortExpression="js_telp" />
                                    <asp:BoundField DataField="js_address" HeaderText="js_address" 
                                        SortExpression="js_address" />
                                    <asp:BoundField DataField="js_city" HeaderText="js_city" 
                                        SortExpression="js_city" />
                                    <asp:BoundField DataField="js_username" HeaderText="js_username" 
                                        SortExpression="js_username" />
                                    <asp:BoundField DataField="js_password" HeaderText="js_password" 
                                        SortExpression="js_password" />
                                    <asp:BoundField DataField="js_diploma" HeaderText="js_diploma" 
                                        SortExpression="js_diploma" />
                                    <asp:BoundField DataField="js_alumna" HeaderText="js_alumna" 
                                        SortExpression="js_alumna" />
                                    <asp:BoundField DataField="js_graduateyear" HeaderText="js_graduateyear" 
                                        SortExpression="js_graduateyear" />
                                    <asp:BoundField DataField="js_category" HeaderText="js_category" 
                                        SortExpression="js_category" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [jobseeker] WHERE [js_id] = @js_id" 
                                InsertCommand="INSERT INTO [jobseeker] ([js_firstname], [js_lastname], [js_gender], [js_email], [js_telp], [js_address], [js_city], [js_username], [js_password], [js_diploma], [js_alumna], [js_graduateyear], [js_category]) VALUES (@js_firstname, @js_lastname, @js_gender, @js_email, @js_telp, @js_address, @js_city, @js_username, @js_password, @js_diploma, @js_alumna, @js_graduateyear, @js_category)" 
                                SelectCommand="SELECT * FROM [jobseeker]" 
                                
                                    
                                    
                                    UpdateCommand="UPDATE [jobseeker] SET [js_firstname] = @js_firstname, [js_lastname] = @js_lastname, [js_gender] = @js_gender, [js_email] = @js_email, [js_telp] = @js_telp, [js_address] = @js_address, [js_city] = @js_city, [js_username] = @js_username, [js_password] = @js_password, [js_diploma] = @js_diploma, [js_alumna] = @js_alumna, [js_graduateyear] = @js_graduateyear, [js_category] = @js_category WHERE [js_id] = @js_id" 
                                    FilterExpression="js_lastname like '{0}%'">
                                <DeleteParameters>
                                    <asp:Parameter Name="js_id" Type="Decimal" />
                                </DeleteParameters>
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="js_lastname" 
                                        PropertyName="Text" />
                                </FilterParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="js_firstname" Type="String" />
                                    <asp:Parameter Name="js_lastname" Type="String" />
                                    <asp:Parameter Name="js_gender" Type="String" />
                                    <asp:Parameter Name="js_email" Type="String" />
                                    <asp:Parameter Name="js_telp" Type="String" />
                                    <asp:Parameter Name="js_address" Type="String" />
                                    <asp:Parameter Name="js_city" Type="String" />
                                    <asp:Parameter Name="js_username" Type="String" />
                                    <asp:Parameter Name="js_password" Type="String" />
                                    <asp:Parameter Name="js_diploma" Type="String" />
                                    <asp:Parameter Name="js_alumna" Type="String" />
                                    <asp:Parameter Name="js_graduateyear" Type="String" />
                                    <asp:Parameter Name="js_category" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="js_firstname" Type="String" />
                                    <asp:Parameter Name="js_lastname" Type="String" />
                                    <asp:Parameter Name="js_gender" Type="String" />
                                    <asp:Parameter Name="js_email" Type="String" />
                                    <asp:Parameter Name="js_telp" Type="String" />
                                    <asp:Parameter Name="js_address" Type="String" />
                                    <asp:Parameter Name="js_city" Type="String" />
                                    <asp:Parameter Name="js_username" Type="String" />
                                    <asp:Parameter Name="js_password" Type="String" />
                                    <asp:Parameter Name="js_diploma" Type="String" />
                                    <asp:Parameter Name="js_alumna" Type="String" />
                                    <asp:Parameter Name="js_graduateyear" Type="String" />
                                    <asp:Parameter Name="js_category" Type="String" />
                                    <asp:Parameter Name="js_id" Type="Decimal" />
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

