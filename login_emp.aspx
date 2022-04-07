<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login_emp.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title"> 
							<h2>LOGIN</h2>
							<p> as Employee or 
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    PostBackUrl="~/reg_emp.aspx">Create an account</asp:LinkButton></p>
                                <center>
                                Username&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="200px"></asp:TextBox> <br /> <br />
                                Password &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password" class="form-control" Width="200px"></asp:TextBox> <br /> <br />
                                <asp:Button ID="Button1" runat="server" Text="Login" class="btn" ForeColor="White"></asp:Button>
                                <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                </center>
                        </div>
					</div>
				</div>
			</div>
		</section>
</asp:Content>

