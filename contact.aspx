<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
		<section id="contact" >
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Contact Us</h2>
							<p>If you have some Questions or need Help! Please Contact Us!<br>We make Cool and Clean Design for your Business</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="section-text">
							<h4>Our Business Office</h4>
							<p>3422 Street, Barcelona 432, Spain, New Building North, 15th Floor</p>
							<p><i class="fa fa-phone"></i> +101 377 655 22125</p>
							<p><i class="fa fa-envelope"></i> mail@yourcompany.com</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="section-text">
							<h4>Business Hours</h4>
							<p><i class="fa fa-clock-o"></i> <span class="day">Weekdays:</span><span>9am to 8pm</span></p>
							<p><i class="fa fa-clock-o"></i> <span class="day">Saturday:</span><span>9am to 2pm</span></p>
							<p><i class="fa fa-clock-o"></i> <span class="day">Sunday:</span><span>Closed</span></p>
						</div>
					</div>
					<div class="col-md-6">
						<form name="sentMessage" id="contactForm" novalidate="">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name *" class="form-control" ></asp:TextBox>
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<asp:TextBox ID="TextBox2" runat="server" placeholder="Your Email *" class="form-control"></asp:TextBox>
										<p class="help-block text-danger"></p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<asp:TextBox ID="TextBox3" runat="server" placeholder="Your Message *" class="form-control"></asp:TextBox>
                                        <p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-lg-12 text-center">
									<div id="success"></div>
                                    <asp:Button ID="Button1" runat="server"  class="btn" Text="Send Message"></asp:Button>
								    <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        DeleteCommand="DELETE FROM [saran] WHERE [saran_id] = @saran_id" 
                                        InsertCommand="INSERT INTO [saran] ([saran_nama], [saran_email], [saran_isi]) VALUES (@saran_nama, @saran_email, @saran_isi)" 
                                        SelectCommand="SELECT * FROM [saran]" 
                                        UpdateCommand="UPDATE [saran] SET [saran_nama] = @saran_nama, [saran_email] = @saran_email, [saran_isi] = @saran_isi WHERE [saran_id] = @saran_id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="saran_id" Type="Decimal" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:ControlParameter Name="saran_nama" Type="String" ControlID="TextBox1" 
                                                PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox2" Name="saran_email" 
                                                PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="TextBox3" Name="saran_isi" PropertyName="Text" 
                                                Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="saran_nama" Type="String" />
                                            <asp:Parameter Name="saran_email" Type="String" />
                                            <asp:Parameter Name="saran_isi" Type="String" />
                                            <asp:Parameter Name="saran_id" Type="Decimal" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
</asp:Content>

