<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Get Your Job</h2>
							<p>If you have some Questions or need Help! Please Contact Us!<br>We make Cool and Clean Design for your Business</p>
						        <center>
                                <asp:Button ID="Button1" runat="server" Text="Job Seeker" class="btn btn-xl" 
                                        PostBackUrl="~/login_js.aspx"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Employee" class="btn btn-xl" 
                                        PostBackUrl="~/login_emp.aspx"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Text="Administrator" class="btn btn-xl" 
                                        PostBackUrl="~/login_admin.aspx"/>
                                &nbsp;
                                </center>


                             <p>&nbsp;</p>
                             <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                        </div>
					</div>
				</div>
			</div>
		</section>
</asp:Content>

