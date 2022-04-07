Imports System.Data
Imports System.Data.SqlClient
Partial Class page_adm_admin_admin
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
        Panel1.Visible = False
        Panel2.Visible = False
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        'Insert Data
        SqlDataSource2.Insert()
        Response.Write("<script>alert('data inserted')</script>")
        Response.Redirect("admin_admin.aspx")
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim admin_firstname As String = TextBox2.Text.ToString()
        Dim admin_lastname As String = TextBox3.Text.ToString()
        Dim admin_username As String = TextBox4.Text.ToString()
        Dim admin_password As String = TextBox5.Text.ToString()

        'Create SQL Connection
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        'con.Open()

        'Create SQL Command
        Dim cmd As New SqlCommand()
        cmd.CommandText = "UPDATE admin SET admin_firstname = @admin_firstname, admin_lastname = @admin_lastname, admin_username = @admin_username, admin_password = @admin_password WHERE admin_id = '" + admin_id.Text + "'"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        Dim upload_admin_firstname As New SqlParameter("@admin_firstname", SqlDbType.VarChar, 50)
        upload_admin_firstname.Value = admin_firstname.ToString()
        cmd.Parameters.Add(upload_admin_firstname)

        Dim upload_admin_lastname As New SqlParameter("@admin_lastname", SqlDbType.VarChar, 50)
        upload_admin_lastname.Value = admin_lastname.ToString()
        cmd.Parameters.Add(upload_admin_lastname)

        Dim upload_admin_username As New SqlParameter("@admin_username", SqlDbType.VarChar, 50)
        upload_admin_username.Value = admin_username.ToString()
        cmd.Parameters.Add(upload_admin_username)

        Dim upload_admin_password As New SqlParameter("@admin_password", SqlDbType.VarChar, 50)
        upload_admin_password.Value = admin_password.ToString()
        cmd.Parameters.Add(upload_admin_password)

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        Response.Write("<script>alert('data updated')</script>")
        Response.Redirect("admin_admin.aspx")
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel2.Visible = True
        admin_id.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text
        TextBox3.Text = GridView1.SelectedRow.Cells(3).Text
        TextBox4.Text = GridView1.SelectedRow.Cells(4).Text
        TextBox5.Text = GridView1.SelectedRow.Cells(5).Text

    End Sub
End Class
