<%@ WebHandler Language="VB" Class="Handler9" %>

Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Public Class Handler9 : Implements IHttpHandler
    
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        
        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        con.Open()
        
        'Create SQL Command
        cmd.CommandText = "SELECT app_certificate2 FROM application WHERE app_id = @app_id"
        cmd.CommandType = System.Data.CommandType.Text
        cmd.Connection = con
        
        Dim ImageID As New SqlParameter("@app_id", System.Data.SqlDbType.Int)
        ImageID.Value = context.Request.QueryString("app_id")
        cmd.Parameters.Add(ImageID)
        
        Dim dreader As SqlDataReader = cmd.ExecuteReader()
        dreader.Read()
        context.Response.BinaryWrite(DirectCast(dreader("app_certificate2"), Byte()))
        dreader.Close()
        con.Close()
    End Sub
 
    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class