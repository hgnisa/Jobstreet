Imports System.Data
Imports System.Data.SqlClient
Partial Class page_adm_admin_job
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

        Dim dateupdate As Date = Date.Now
        Label4.Text = dateupdate.ToString()

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        SqlDataSource2.Insert()
        Response.Redirect("admin_job.aspx")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel2.Visible = True
        job_id.Text = GridView1.SelectedRow.Cells(1).Text
        DropDownList2.SelectedValue = GridView1.SelectedRow.Cells(2).Text
        TextBox19.Text = GridView1.SelectedRow.Cells(3).Text
        DropDownList6.SelectedValue = GridView1.SelectedRow.Cells(4).Text
        TextBox4.Text = GridView1.SelectedRow.Cells(5).Text
        DropDownList7.SelectedValue = GridView1.SelectedRow.Cells(6).Text
        TextBox7.Text = GridView1.SelectedRow.Cells(7).Text
        DropDownList4.SelectedValue = GridView1.SelectedRow.Cells(9).Text
        TextBox17.Text = GridView1.SelectedRow.Cells(10).Text
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'Create SQL Connection
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        'con.Open()

        'Create SQL Command
        Dim cmd As New SqlCommand()
        cmd.CommandText = "UPDATE job SET job_company = @job_company, job_title = @job_title, job_category = @job_category, job_position = @job_position, job_diploma = @job_diploma, job_spesification = @job_spesification, job_city = @job_city, job_emp_username = @job_emp_username WHERE job_id = '" + job_id.Text + "'"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        Dim a As New SqlParameter("@job_company", SqlDbType.VarChar, 50)
        a.Value = DropDownList2.SelectedValue.ToString()
        cmd.Parameters.Add(a)

        Dim b As New SqlParameter("@job_title", SqlDbType.VarChar, 50)
        b.Value = TextBox19.Text.ToString()
        cmd.Parameters.Add(b)

        Dim c As New SqlParameter("@job_category", SqlDbType.VarChar, 50)
        c.Value = DropDownList6.SelectedValue.ToString()
        cmd.Parameters.Add(c)

        Dim d As New SqlParameter("@job_position", SqlDbType.VarChar, 50)
        d.Value = TextBox4.Text.ToString()
        cmd.Parameters.Add(d)

        Dim n As New SqlParameter("@job_diploma", SqlDbType.VarChar, 50)
        n.Value = DropDownList7.SelectedValue.ToString()
        cmd.Parameters.Add(n)

        Dim f As New SqlParameter("@job_spesification", SqlDbType.VarChar, 50)
        f.Value = TextBox7.Text.ToString()
        cmd.Parameters.Add(f)

        Dim g As New SqlParameter("@job_city", SqlDbType.VarChar, 50)
        g.Value = DropDownList4.SelectedValue.ToString()
        cmd.Parameters.Add(g)

        Dim i As New SqlParameter("@job_emp_username", SqlDbType.VarChar, 50)
        i.Value = TextBox17.Text.ToString()
        cmd.Parameters.Add(i)

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("admin_job.aspx")

    End Sub
End Class
