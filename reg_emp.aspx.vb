
Partial Class reg_emp
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        SqlDataSource1.Insert()
        r_firstname.Text = ""
        r_lastname.Text = ""
        r_username.Text = ""
        r_password.Text = ""
        Response.Write("<script>alert('Account Created')</script>")
        Response.Redirect("login_emp.aspx")
    End Sub
End Class
