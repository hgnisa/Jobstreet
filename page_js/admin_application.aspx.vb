Imports System.Data
Imports System.Data.SqlClient
Partial Class page_adm_admin_application
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand
        Dim xCommand1 As New SqlCommand
        Dim sql As String
        Dim jsusername As String = Session("js_username")

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        con.Open()

        sql = "SELECT * FROM [jobseeker] WHERE js_username = '" + jsusername + "'"
        xCommand.Connection = con
        xCommand.CommandText = sql
        Dim js_id As String = xCommand.ExecuteScalar
        Session("js_id") = js_id
        Dim js_category As String = xCommand.ExecuteScalar
        Session("js_category") = js_category

        Label2.Text = jsusername
    End Sub
End Class
