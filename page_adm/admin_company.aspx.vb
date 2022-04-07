Imports System.Data
Imports System.Data.SqlClient
Partial Class page_adm_admin_company
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If FileUpload2.PostedFile IsNot Nothing AndAlso
                    FileUpload2.PostedFile.FileName <> "" Then
            Dim imageSize As Byte() = New Byte(FileUpload2.PostedFile.ContentLength - 1) {}
            Dim uploadedImage1 As HttpPostedFile = FileUpload2.PostedFile()
            uploadedImage1.InputStream.Read(imageSize, 0, CInt(FileUpload2.PostedFile.ContentLength))

            'Create SQL Connection
            Dim con As New SqlConnection
            Dim xCommand As New SqlCommand

            con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
            'con.Open()

            'Create SQL Command
            Dim cmd As New SqlCommand()
            cmd.CommandText = "UPDATE company SET company_name = @company_name, company_logo = @company_logo,  company_address = @company_address, company_city = @company_city, company_description = @company_description, company_email = @company_email, company_telp = @company_telp, company_emp_username = @company_emp_username WHERE company_id = '" + company_id.Text + "'"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con

            Dim upload_company_name As New SqlParameter("@company_name", SqlDbType.VarChar, 50)
            upload_company_name.Value = TextBox2.Text.ToString()
            cmd.Parameters.Add(upload_company_name)

            Dim upload_company_logo As New SqlParameter("@company_logo", SqlDbType.Image, imageSize.Length)
            upload_company_logo.Value = imageSize
            cmd.Parameters.Add(upload_company_logo)

            Dim upload_company_description As New SqlParameter("@company_description", SqlDbType.VarChar, 50)
            upload_company_description.Value = TextBox5.Text.ToString()
            cmd.Parameters.Add(upload_company_description)

            Dim upload_company_address As New SqlParameter("@company_address", SqlDbType.VarChar, 50)
            upload_company_address.Value = TextBox3.Text.ToString()
            cmd.Parameters.Add(upload_company_address)

            Dim upload_company_city As New SqlParameter("@company_city", SqlDbType.VarChar, 50)
            upload_company_city.Value = DropDownList2.Text.ToString()
            cmd.Parameters.Add(upload_company_city)

            Dim upload_company_email As New SqlParameter("@company_email", SqlDbType.VarChar, 50)
            upload_company_email.Value = TextBox7.Text.ToString()
            cmd.Parameters.Add(upload_company_email)

            Dim upload_company_telp As New SqlParameter("@company_telp", SqlDbType.VarChar, 50)
            upload_company_telp.Value = TextBox16.Text.ToString()
            cmd.Parameters.Add(upload_company_telp)

            Dim upload_company_emp_username As New SqlParameter("@company_emp_username", SqlDbType.VarChar, 50)
            upload_company_emp_username.Value = TextBox17.Text.ToString()
            cmd.Parameters.Add(upload_company_emp_username)

            con.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            con.Close()
        End If
        Response.Write("<script>alert('data inserted')</script>")
        Response.Redirect("admin_company.aspx")
    End Sub

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
        Dim admin_id As String = xCommand.ExecuteScalar
        Session("admin_id") = admin_id

        Label2.Text = adminusername

        Panel1.Visible = False
        Panel2.Visible = False
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

        If FileUpload1.PostedFile IsNot Nothing AndAlso
            FileUpload1.PostedFile.FileName <> "" Then
            Dim imageSize As Byte() = New Byte(FileUpload1.PostedFile.ContentLength - 1) {}
            Dim uploadedImage1 As HttpPostedFile = FileUpload1.PostedFile()
            uploadedImage1.InputStream.Read(imageSize, 0, CInt(FileUpload1.PostedFile.ContentLength))

            'Create SQL Connection
            Dim con As New SqlConnection
            Dim xCommand As New SqlCommand

            con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
            'con.Open()

            'Create SQL Command
            Dim cmd As New SqlCommand()
            cmd.CommandText = "INSERT INTO company(company_logo, company_name, company_description, company_address, company_city, company_email, company_telp, company_emp_username) VALUES (@company_logo, @company_name, @company_description, @company_address, @company_city, @company_email, @company_telp, @company_emp_username)"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con

            Dim upload_company_name As New SqlParameter("@company_name", SqlDbType.VarChar, 50)
            upload_company_name.Value = TextBox6.Text.ToString()
            cmd.Parameters.Add(upload_company_name)

            Dim upload_company_logo As New SqlParameter("@company_logo", SqlDbType.Image, imageSize.Length)
            upload_company_logo.Value = imageSize
            cmd.Parameters.Add(upload_company_logo)

            Dim upload_company_description As New SqlParameter("@company_description", SqlDbType.VarChar, 50)
            upload_company_description.Value = TextBox10.Text.ToString()
            cmd.Parameters.Add(upload_company_description)

            Dim upload_company_address As New SqlParameter("@company_address", SqlDbType.VarChar, 50)
            upload_company_address.Value = TextBox8.Text.ToString()
            cmd.Parameters.Add(upload_company_address)

            Dim upload_company_city As New SqlParameter("@company_city", SqlDbType.VarChar, 50)
            upload_company_city.Value = DropDownList1.Text.ToString()
            cmd.Parameters.Add(upload_company_city)

            Dim upload_company_email As New SqlParameter("@company_email", SqlDbType.VarChar, 50)
            upload_company_email.Value = TextBox11.Text.ToString()
            cmd.Parameters.Add(upload_company_email)

            Dim upload_company_telp As New SqlParameter("@company_telp", SqlDbType.VarChar, 50)
            upload_company_telp.Value = TextBox13.Text.ToString()
            cmd.Parameters.Add(upload_company_telp)

            Dim upload_company_emp_username As New SqlParameter("@company_emp_username", SqlDbType.VarChar, 50)
            upload_company_emp_username.Value = TextBox14.Text.ToString()
            cmd.Parameters.Add(upload_company_emp_username)

            con.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            con.Close()
        End If
        Response.Write("<script>alert('data inserted')</script>")
        Response.Redirect("admin_company.aspx")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel2.Visible = True
        company_id.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text
        TextBox3.Text = GridView1.SelectedRow.Cells(4).Text
        DropDownList2.SelectedValue = GridView1.SelectedRow.Cells(5).Text
        TextBox5.Text = GridView1.SelectedRow.Cells(6).Text
        TextBox7.Text = GridView1.SelectedRow.Cells(7).Text
        TextBox16.Text = GridView1.SelectedRow.Cells(8).Text
        TextBox17.Text = GridView1.SelectedRow.Cells(9).Text
    End Sub
End Class
