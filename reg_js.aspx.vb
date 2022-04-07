
Partial Class reg_js
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        SqlDataSource1.Insert()
        fname.Text = ""
        lname.Text = ""
        email.Text = ""
        telp.Text = ""
        address.Text = ""
        alumna.Text = ""
        graduateyear.Text = ""
        username.Text = ""
        password.Text = ""
        Response.Write("<script>alert('Account Created')</script>")
        Response.Redirect("login_js.aspx")

    End Sub
End Class
