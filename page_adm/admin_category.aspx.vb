Imports System.Data
Imports System.Data.SqlClient
Partial Class page_adm_admin_category
    Inherits System.Web.UI.Page

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        SqlDataSource2.Insert()
        TextBox6.Text = ""
        Response.Redirect("admin_category.aspx")
        Response.Write("<script>alert('data inserted')</script>")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim category_name As String = TextBox2.Text.ToString()

        'Create SQL Connection
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        'con.Open()

        'Create SQL Command
        Dim cmd As New SqlCommand()
        cmd.CommandText = "UPDATE category SET category_name = @category_name WHERE category_id = '" + category_id.Text + "'"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        Dim upload_category_name As New SqlParameter("@category_name", SqlDbType.VarChar, 50)
        upload_category_name.Value = category_name.ToString()
        cmd.Parameters.Add(upload_category_name)

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("admin_category.aspx")
        Response.Write("<script>alert('data updated')</script>")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Panel2.Visible = True
        category_id.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text
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
        Dim emp_id As String = xCommand.ExecuteScalar
        Session("emp_id") = emp_id

        Label2.Text = adminusername
        Panel1.Visible = False
        Panel2.Visible = False
    End Sub
End Class
