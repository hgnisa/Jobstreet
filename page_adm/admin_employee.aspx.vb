Imports System.Data
Imports System.Data.SqlClient
Partial Class page_adm_admin_employee
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
        Response.Redirect("admin_employee.aspx")
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim emp_firstname As String = TextBox2.Text.ToString()
        Dim emp_lastname As String = TextBox3.Text.ToString()
        Dim emp_username As String = TextBox4.Text.ToString()
        Dim emp_password As String = TextBox5.Text.ToString()

        'Create SQL Connection
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        'con.Open()

        'Create SQL Command
        Dim cmd As New SqlCommand()
        cmd.CommandText = "UPDATE employee SET emp_firstname = @emp_firstname, emp_lastname = @emp_lastname, emp_username = @emp_username, emp_password = @emp_password WHERE emp_id = '" + emp_id.Text + "'"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        Dim upload_emp_firstname As New SqlParameter("@emp_firstname", SqlDbType.VarChar, 50)
        upload_emp_firstname.Value = emp_firstname.ToString()
        cmd.Parameters.Add(upload_emp_firstname)

        Dim upload_emp_lastname As New SqlParameter("@emp_lastname", SqlDbType.VarChar, 50)
        upload_emp_lastname.Value = emp_lastname.ToString()
        cmd.Parameters.Add(upload_emp_lastname)

        Dim upload_emp_username As New SqlParameter("@emp_username", SqlDbType.VarChar, 50)
        upload_emp_username.Value = emp_username.ToString()
        cmd.Parameters.Add(upload_emp_username)

        Dim upload_emp_password As New SqlParameter("@emp_password", SqlDbType.VarChar, 50)
        upload_emp_password.Value = emp_password.ToString()
        cmd.Parameters.Add(upload_emp_password)

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        Response.Write("<script>alert('data updated')</script>")
        Response.Redirect("admin_employee.aspx")
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel2.Visible = True
        emp_id.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text
        TextBox3.Text = GridView1.SelectedRow.Cells(3).Text
        TextBox4.Text = GridView1.SelectedRow.Cells(4).Text
        TextBox5.Text = GridView1.SelectedRow.Cells(5).Text
    End Sub
End Class
