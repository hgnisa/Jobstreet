Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim username As String = TextBox1.Text
        Dim password As String = TextBox2.Text
        Dim cmd As SqlCommand
        Dim rdr As SqlDataReader
        Dim sqlUserName As String
        If TextBox1.Text <> "" And TextBox2.Text <> "" Then
            Dim con As New SqlConnection
            con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"


            Dim Conn As New SqlConnection(con.ConnectionString)
            Conn.Open()

            sqlUserName = "SELECT * FROM [admin] WHERE [admin_username] = '" + TextBox1.Text + "' AND [admin_password] = '" + TextBox2.Text + "'"
            cmd = New SqlCommand(sqlUserName, Conn)

            rdr = cmd.ExecuteReader()

            If rdr.HasRows = True Then
                Session("admin_username") = username
                Response.Redirect("~/page_adm/admin_home.aspx")
            Else
                Label1.Text = "Username or password invalid"
                Session("user") = ""
                TextBox1.Text = ""
                TextBox2.Text = ""
            End If
            rdr.Close()
            cmd.Dispose()
        Else
            Label1.Text = "Form cannot be blank"
        End If
    End Sub
End Class
