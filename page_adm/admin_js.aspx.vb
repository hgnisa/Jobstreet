Imports System.Data.SqlClient
Imports System.Data
Partial Class page_adm_admin_js
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand
        Dim sql As String
        Dim adminusername As String = Session("admin_username")

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        con.Open()

        sql = "SELECT * FROM [admin] WHERE admin_username = '" + adminusername + "'"
        xCommand.Connection = con
        xCommand.CommandText = sql
        Dim emp_id As String = xCommand.ExecuteScalar
        Session("emp_id") = emp_id

        Label2.Text = adminusername
        Panel2.Visible = False
        Panel3.Visible = False
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'Create SQL Connection
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        'con.Open()

        'Create SQL Command
        Dim cmd As New SqlCommand()
        cmd.CommandText = "UPDATE jobseeker SET js_firstname = @js_firstname, js_lastname = @js_lastname, js_gender = @js_gender, js_email = @js_email, js_telp = @js_telp, js_address = @js_address, js_city = @js_city, js_diploma = @js_diploma, js_alumna = @js_alumna, js_graduateyear = @js_graduateyear, js_category = @js_category, js_username = @js_username, js_password = @js_password WHERE js_id = '" + Label5.Text + "'"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        Dim a As New SqlParameter("@js_firstname", SqlDbType.VarChar, 50)
        a.Value = TextBox2.Text.ToString()
        cmd.Parameters.Add(a)

        Dim b As New SqlParameter("@js_lastname", SqlDbType.VarChar, 50)
        b.Value = TextBox3.Text.ToString()
        cmd.Parameters.Add(b)

        Dim c As New SqlParameter("@js_gender", SqlDbType.VarChar, 50)
        c.Value = DropDownList2.SelectedValue.ToString()
        cmd.Parameters.Add(c)

        Dim d As New SqlParameter("@js_email", SqlDbType.VarChar, 50)
        d.Value = TextBox4.Text.ToString()
        cmd.Parameters.Add(d)

        Dim n As New SqlParameter("@js_telp", SqlDbType.VarChar, 50)
        n.Value = TextBox5.Text.ToString()
        cmd.Parameters.Add(n)

        Dim f As New SqlParameter("@js_address", SqlDbType.VarChar, 50)
        f.Value = TextBox6.Text.ToString()
        cmd.Parameters.Add(f)

        Dim g As New SqlParameter("@js_city", SqlDbType.VarChar, 50)
        g.Value = DropDownList3.SelectedValue.ToString()
        cmd.Parameters.Add(g)

        Dim h As New SqlParameter("@js_diploma", SqlDbType.VarChar, 50)
        h.Value = DropDownList4.SelectedValue.ToString()
        cmd.Parameters.Add(h)

        Dim i As New SqlParameter("@js_alumna", SqlDbType.VarChar, 50)
        i.Value = TextBox7.Text.ToString()
        cmd.Parameters.Add(i)

        Dim j As New SqlParameter("@js_graduateyear", SqlDbType.VarChar, 50)
        j.Value = TextBox8.Text.ToString()
        cmd.Parameters.Add(j)

        Dim k As New SqlParameter("@js_category", SqlDbType.VarChar, 50)
        k.Value = DropDownList5.SelectedValue.ToString()
        cmd.Parameters.Add(k)

        Dim l As New SqlParameter("@js_username", SqlDbType.VarChar, 50)
        l.Value = TextBox9.Text.ToString()
        cmd.Parameters.Add(l)

        Dim m As New SqlParameter("@js_password", SqlDbType.VarChar, 50)
        m.Value = TextBox10.Text.ToString()
        cmd.Parameters.Add(m)

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        Response.Write("<script>alert('Your data is inserted')</script>")
        Response.Redirect("admin_js.aspx")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        SqlDataSource2.Insert()
        Response.Redirect("admin_js.aspx")
    End Sub

    
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel2.Visible = True
        Label5.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text
        TextBox3.Text = GridView1.SelectedRow.Cells(3).Text
        DropDownList2.SelectedValue = GridView1.SelectedRow.Cells(4).Text
        TextBox4.Text = GridView1.SelectedRow.Cells(5).Text
        TextBox5.Text = GridView1.SelectedRow.Cells(6).Text
        TextBox6.Text = GridView1.SelectedRow.Cells(7).Text
        DropDownList3.SelectedValue = GridView1.SelectedRow.Cells(8).Text
        DropDownList4.SelectedValue = GridView1.SelectedRow.Cells(11).Text
        TextBox7.Text = GridView1.SelectedRow.Cells(12).Text
        TextBox8.Text = GridView1.SelectedRow.Cells(13).Text
        DropDownList5.SelectedValue = GridView1.SelectedRow.Cells(14).Text
        TextBox9.Text = GridView1.SelectedRow.Cells(9).Text
        TextBox10.Text = GridView1.SelectedRow.Cells(10).Text
    End Sub
End Class
