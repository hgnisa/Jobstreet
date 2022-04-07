<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
		<header>
			<div class="container">
				<div class="slider-container">
					<div class="intro-text">
						<div class="intro-heading">YOUR FAVORITE SOURCE OF FREE BOOTSTRAP THEMES</div>
						<a href="" class="page-scroll btn btn-xl">LOGIN</a>
					</div>
				</div>
			</div>
		</header>
<section id="about">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>GET YOUR JOB</h2>
							<p>A creative agency based on Candy Land, ready to boost your business with some beautifull templates. MOOZ Agency is one of the best in town see more you will be amazed.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
                            <asp:Image ID="Image1" height="200px" Width="200px" runat="server" ImageUrl="~/images/place-1.jpg"></asp:Image>
							<h3>Web Development</h3>
							<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
                        <asp:Image ID="Image2" height="200px" Width="200px" runat="server" ImageUrl="~/images/place-1.jpg"></asp:Image>
							<h3>Visualisation</h3>
							<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<asp:Image ID="Image3" height="200px" Width="200px" runat="server" ImageUrl="~/images/place-1.jpg"></asp:Image>
							<h3>Photography</h3>
							<p>Accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
						</div>
					</div>
					<!-- end about module -->
					<!-- about module -->
					<div class="col-md-3 text-center">
						<div class="mz-module-about">
							<asp:Image ID="Image4" height="200px" Width="200px" runat="server" ImageUrl="~/images/place-1.jpg"></asp:Image>
							<h3>UI/UX Design</h3>
							<p> Itaque earum rerum hic tenetur a sapiente, ut aut reiciendis maiores</p>
                            
						</div>
					</div>
					<!-- end about module -->
				</div>
			</div>
			<!-- /.container -->
		</section>
    <asp:Panel ID="Panel1"  runat="server">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </asp:Panel>
</asp:Content>

