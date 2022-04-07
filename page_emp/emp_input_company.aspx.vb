Imports System.Data.SqlClient
Imports System.Data
Partial Class page_emp_Default2
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

        Label2.Text = empusername
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim company_name As String = comp_name.Text.ToString()
            Dim company_description As String = comp_desc.Text.ToString()
            Dim company_address As String = comp_address.Text.ToString()
            Dim company_city As String = DropDownList1.Text.ToString()
            Dim company_email As String = comp_email.Text.ToString()
            Dim company_telp As String = comp_telp.Text.ToString()
        Dim company_emp_username As String = Label2.Text.ToString()

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
                upload_company_name.Value = company_name.ToString()
                cmd.Parameters.Add(upload_company_name)

                Dim upload_company_logo As New SqlParameter("@company_logo", SqlDbType.Image, imageSize.Length)
                upload_company_logo.Value = imageSize
                cmd.Parameters.Add(upload_company_logo)

                Dim upload_company_description As New SqlParameter("@company_description", SqlDbType.VarChar, 50)
                upload_company_description.Value = company_description.ToString()
                cmd.Parameters.Add(upload_company_description)

                Dim upload_company_address As New SqlParameter("@company_address", SqlDbType.VarChar, 50)
                upload_company_address.Value = company_address.ToString()
                cmd.Parameters.Add(upload_company_address)

                Dim upload_company_city As New SqlParameter("@company_city", SqlDbType.VarChar, 50)
                upload_company_city.Value = DropDownList1.Text.ToString()
                cmd.Parameters.Add(upload_company_city)

                Dim upload_company_email As New SqlParameter("@company_email", SqlDbType.VarChar, 50)
                upload_company_email.Value = company_email.ToString()
                cmd.Parameters.Add(upload_company_email)

                Dim upload_company_telp As New SqlParameter("@company_telp", SqlDbType.VarChar, 50)
                upload_company_telp.Value = company_telp.ToString()
                cmd.Parameters.Add(upload_company_telp)

                Dim upload_company_emp_username As New SqlParameter("@company_emp_username", SqlDbType.VarChar, 50)
            upload_company_emp_username.Value = company_emp_username.ToString()
                cmd.Parameters.Add(upload_company_emp_username)

                con.Open()
                Dim result As Integer = cmd.ExecuteNonQuery()
                con.Close()
                Response.Write("<script>alert('Your data is inserted')</script>")
            Response.Redirect("emp_info_company.aspx")
        End If
    End Sub
End Class
