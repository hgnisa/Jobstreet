Imports System.Data
Imports System.Data.SqlClient
Partial Class page_emp_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand
        Dim sql As String
        Dim empusername As String = Session("emp_username")

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        con.Open()

        sql = "SELECT * FROM [employee] WHERE emp_username = '" + empusername + "'"
        xCommand.Connection = con
        xCommand.CommandText = sql
        Dim emp_id As String = xCommand.ExecuteScalar
        Session("emp_id") = emp_id

        Label3.Text = empusername

        Dim uploaddate As Date = Date.Now
        Panel1.Visible = False
        Label4.Text = uploaddate.ToString()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Create SQL Connection
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        'con.Open()

        'Create SQL Command
        Dim cmd As New SqlCommand()
        cmd.CommandText = "INSERT INTO [job] ([job_company], [job_title], [job_category], [job_position], [job_diploma], [job_spesification], [job_uploaddate], [job_city], [job_emp_username]) VALUES (@job_company, @job_title, @job_category, @job_position, @job_diploma, @job_spesification, @job_uploaddate, @job_city, @job_emp_username)"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        Dim a As New SqlParameter("@job_company", SqlDbType.VarChar, 50)
        a.Value = DropDownList2.Text.ToString()
        cmd.Parameters.Add(a)

        Dim b As New SqlParameter("@job_title", SqlDbType.VarChar, 50)
        b.Value = job_title.Text.ToString()
        cmd.Parameters.Add(b)

        Dim c As New SqlParameter("@job_category", SqlDbType.VarChar, 50)
        c.Value = job_category.Text.ToString()
        cmd.Parameters.Add(c)

        Dim d As New SqlParameter("@job_position", SqlDbType.VarChar, 50)
        d.Value = Job_position.Text.ToString()
        cmd.Parameters.Add(d)

        Dim f As New SqlParameter("@job_diploma", SqlDbType.VarChar, 50)
        f.Value = diploma.Text.ToString()
        cmd.Parameters.Add(f)

        Dim g As New SqlParameter("@job_spesification", SqlDbType.VarChar, 50)
        g.Value = job_spec.Text.ToString()
        cmd.Parameters.Add(g)

        Dim h As New SqlParameter("@job_uploaddate", SqlDbType.VarChar, 50)
        h.Value = Label4.Text.ToString()
        cmd.Parameters.Add(h)

        Dim i As New SqlParameter("@job_city", SqlDbType.VarChar, 50)
        i.Value = DropDownList1.Text.ToString()
        cmd.Parameters.Add(i)

        Dim j As New SqlParameter("@job_emp_username", SqlDbType.VarChar, 50)
        j.Value = Label3.Text.ToString()
        cmd.Parameters.Add(j)

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        Response.Write("<script>alert('Your data is inserted')</script>")
        Response.Redirect("emp_info_applier.aspx")
    End Sub
End Class
