Imports System.Data
Imports System.Data.SqlClient
Partial Class page_js_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand
        Dim xCommand1 As New SqlCommand
        Dim xCommand2 As New SqlCommand
        Dim xCommand3 As New SqlCommand
        Dim sql As String
        Dim sql1 As String
        Dim sql2 As String
        Dim sql3 As String
        Dim rdr As SqlDataReader
        Dim jsusername As String = Session("js_username")

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        con.Open()

        sql = "SELECT * FROM [jobseeker] WHERE js_username = '" + jsusername + "'"
        xCommand.Connection = con
        xCommand.CommandText = sql

        sql1 = "SELECT js_category FROM [jobseeker] WHERE js_username = '" + jsusername + "'"
        xCommand1.Connection = con
        xCommand1.CommandText = sql1

        sql2 = "SELECT job_emp_username FROM [job] WHERE job_title = '" + Label4.Text + "'"
        xCommand2.Connection = con
        xCommand2.CommandText = sql2

        sql3 = "SELECT job_id FROM [application] WHERE app_js_username = '" + jsusername + "' AND app_status = 'Accept'"
        xCommand3.Connection = con
        xCommand3.CommandText = sql3

        Dim js_id As String = xCommand.ExecuteScalar
        Session("js_id") = js_id
        Dim js_category As String = xCommand1.ExecuteScalar
        Session("js_category") = js_category
        Dim job_emp_username As String = xCommand2.ExecuteScalar
        Session("job_emp_username") = job_emp_username
        Dim job_id As String = xCommand3.ExecuteScalar
        Session("job_id") = job_id

        rdr = xCommand3.ExecuteReader()
        If rdr.HasRows = True Then
            Panel3.Visible = True
            accept_company.Text = job_id
        Else
            Panel3.Visible = False
        End If

        Label2.Text = jsusername
        Label5.Text = js_category
        Label6.Text = job_emp_username
        accept_company.Text = job_id

        Panel1.Visible = False
        Panel2.Visible = False
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel1.Visible = True
        Label4.Text = GridView1.SelectedRow.Cells(2).Text
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

            Dim imageSize1 As Byte() = New Byte(FileUpload1.PostedFile.ContentLength - 1) {}
            Dim uploadedImage1 As HttpPostedFile = FileUpload1.PostedFile()
            uploadedImage1.InputStream.Read(imageSize1, 0, CInt(FileUpload1.PostedFile.ContentLength))

            Dim imageSize2 As Byte() = New Byte(FileUpload2.PostedFile.ContentLength - 1) {}
            Dim uploadedImage2 As HttpPostedFile = FileUpload2.PostedFile()
            uploadedImage2.InputStream.Read(imageSize2, 0, CInt(FileUpload2.PostedFile.ContentLength))

            Dim imageSize3 As Byte() = New Byte(FileUpload3.PostedFile.ContentLength - 1) {}
            Dim uploadedImage3 As HttpPostedFile = FileUpload3.PostedFile()
            uploadedImage3.InputStream.Read(imageSize3, 0, CInt(FileUpload3.PostedFile.ContentLength))

            Dim imageSize4 As Byte() = New Byte(FileUpload4.PostedFile.ContentLength - 1) {}
            Dim uploadedImage4 As HttpPostedFile = FileUpload4.PostedFile()
            uploadedImage4.InputStream.Read(imageSize4, 0, CInt(FileUpload4.PostedFile.ContentLength))

            Dim imageSize5 As Byte() = New Byte(FileUpload5.PostedFile.ContentLength - 1) {}
            Dim uploadedImage5 As HttpPostedFile = FileUpload5.PostedFile()
            uploadedImage5.InputStream.Read(imageSize5, 0, CInt(FileUpload5.PostedFile.ContentLength))

            Dim imageSize6 As Byte() = New Byte(FileUpload6.PostedFile.ContentLength - 1) {}
            Dim uploadedImage6 As HttpPostedFile = FileUpload6.PostedFile()
            uploadedImage6.InputStream.Read(imageSize6, 0, CInt(FileUpload6.PostedFile.ContentLength))

            Dim imageSize7 As Byte() = New Byte(FileUpload7.PostedFile.ContentLength - 1) {}
            Dim uploadedImage7 As HttpPostedFile = FileUpload7.PostedFile()
            uploadedImage7.InputStream.Read(imageSize7, 0, CInt(FileUpload7.PostedFile.ContentLength))

            Dim imageSize8 As Byte() = New Byte(FileUpload8.PostedFile.ContentLength - 1) {}
            Dim uploadedImage8 As HttpPostedFile = FileUpload8.PostedFile()
            uploadedImage8.InputStream.Read(imageSize8, 0, CInt(FileUpload8.PostedFile.ContentLength))

            Dim imageSize9 As Byte() = New Byte(FileUpload9.PostedFile.ContentLength - 1) {}
            Dim uploadedImage9 As HttpPostedFile = FileUpload9.PostedFile()
            uploadedImage9.InputStream.Read(imageSize9, 0, CInt(FileUpload9.PostedFile.ContentLength))

            Dim imageSize10 As Byte() = New Byte(FileUpload10.PostedFile.ContentLength - 1) {}
            Dim uploadedImage10 As HttpPostedFile = FileUpload10.PostedFile()
            uploadedImage10.InputStream.Read(imageSize10, 0, CInt(FileUpload10.PostedFile.ContentLength))

            Dim imageSize11 As Byte() = New Byte(FileUpload11.PostedFile.ContentLength - 1) {}
            Dim uploadedImage11 As HttpPostedFile = FileUpload11.PostedFile()
            uploadedImage11.InputStream.Read(imageSize11, 0, CInt(FileUpload11.PostedFile.ContentLength))

            Dim imageSize12 As Byte() = New Byte(FileUpload12.PostedFile.ContentLength - 1) {}
            Dim uploadedImage12 As HttpPostedFile = FileUpload12.PostedFile()
            uploadedImage12.InputStream.Read(imageSize12, 0, CInt(FileUpload12.PostedFile.ContentLength))

            'Create SQL Connection
            Dim con As New SqlConnection
            Dim xCommand As New SqlCommand

            con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
            'con.Open()

            'Create SQL Command
            Dim cmd As New SqlCommand()
        cmd.CommandText = "INSERT INTO application (app_cv, app_ktp, app_photo, app_health, app_skck, app_skpk, app_kk, app_certificate1, app_certificate2, app_certificate3, app_certificate4, app_certificate5, app_js_username, app_emp_username, job_id, app_status) VALUES (@app_cv, @app_ktp, @app_photo, @app_health, @app_skck, @app_skpk, @app_kk, @app_certificate1, @app_certificate2, @app_certificate3, @app_certificate4, @app_certificate5, @app_js_username, @app_emp_username, @job_id, @app_status)"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con

            Dim upload_app_cv As New SqlParameter("@app_cv", SqlDbType.Image, imageSize1.Length)
            upload_app_cv.Value = imageSize1
            cmd.Parameters.Add(upload_app_cv)

            Dim upload_app_ktp As New SqlParameter("@app_ktp", SqlDbType.Image, imageSize2.Length)
            upload_app_ktp.Value = imageSize2
            cmd.Parameters.Add(upload_app_ktp)

            Dim upload_app_photo As New SqlParameter("app_photo", SqlDbType.Image, imageSize3.Length)
            upload_app_photo.Value = imageSize3
            cmd.Parameters.Add(upload_app_photo)

            Dim upload_app_health As New SqlParameter("app_health", SqlDbType.Image, imageSize4.Length)
            upload_app_health.Value = imageSize4
            cmd.Parameters.Add(upload_app_health)

            Dim upload_app_skck As New SqlParameter("app_skck", SqlDbType.Image, imageSize5.Length)
            upload_app_skck.Value = imageSize5
            cmd.Parameters.Add(upload_app_skck)

            Dim upload_app_skpk As New SqlParameter("app_skpk", SqlDbType.Image, imageSize6.Length)
            upload_app_skpk.Value = imageSize6
            cmd.Parameters.Add(upload_app_skpk)

            Dim upload_app_kk As New SqlParameter("app_kk", SqlDbType.Image, imageSize7.Length)
            upload_app_kk.Value = imageSize7
            cmd.Parameters.Add(upload_app_kk)

            Dim upload_app_certificate1 As New SqlParameter("app_certificate1", SqlDbType.Image, imageSize8.Length)
            upload_app_certificate1.Value = imageSize8
            cmd.Parameters.Add(upload_app_certificate1)

            Dim upload_app_certificate2 As New SqlParameter("app_certificate2", SqlDbType.Image, imageSize9.Length)
            upload_app_certificate2.Value = imageSize9
            cmd.Parameters.Add(upload_app_certificate2)

            Dim upload_app_certificate3 As New SqlParameter("app_certificate3", SqlDbType.Image, imageSize10.Length)
            upload_app_certificate3.Value = imageSize10
            cmd.Parameters.Add(upload_app_certificate3)

            Dim upload_app_certificate4 As New SqlParameter("app_certificate4", SqlDbType.Image, imageSize11.Length)
            upload_app_certificate4.Value = imageSize11
            cmd.Parameters.Add(upload_app_certificate4)

            Dim upload_app_certificate5 As New SqlParameter("app_certificate5", SqlDbType.Image, imageSize12.Length)
            upload_app_certificate5.Value = imageSize12
            cmd.Parameters.Add(upload_app_certificate5)

        Dim upload_app_js_username As New SqlParameter("@app_js_username", SqlDbType.VarChar, 50)
        upload_app_js_username.Value = Label2.Text.ToString()
        cmd.Parameters.Add(upload_app_js_username)

        Dim upload_app_emp_username As New SqlParameter("@app_emp_username", SqlDbType.VarChar, 50)
        upload_app_emp_username.Value = Label6.Text.ToString()
        cmd.Parameters.Add(upload_app_emp_username)

        Dim upload_job_id As New SqlParameter("@job_id", SqlDbType.VarChar, 50)
        upload_job_id.Value = Label4.Text.ToString()
        cmd.Parameters.Add(upload_job_id)

        Dim upload_app_status As New SqlParameter("@app_status", SqlDbType.VarChar, 50)
        upload_app_status.Value = "Waiting"
        cmd.Parameters.Add(upload_app_status)

            con.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            con.Close()

        Response.Write("<script>alert('Your apply added, look at your profile')</script>")
        Response.Redirect("js_application.aspx")
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.SelectedIndexChanged
        Panel1.Visible = True
        Label4.Text = GridView2.SelectedRow.Cells(2).Text
    End Sub
End Class
