
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        SqlDataSource1.Insert()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        Response.Write("<script>alert('Thankyou')</script>")
    End Sub
End Class
