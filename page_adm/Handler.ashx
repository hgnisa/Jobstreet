<%@ WebHandler Language="VB" Class="Handler" %>

Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Public Class Handler : Implements IHttpHandler
    
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        
        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        con.Open()
        
        'Create SQL Command
        cmd.CommandText = "SELECT company_logo FROM company WHERE company_id = @company_id"
        cmd.CommandType = System.Data.CommandType.Text
        cmd.Connection = con
        
        Dim ImageID As New SqlParameter("@company_id", System.Data.SqlDbType.Int)
        ImageID.Value = context.Request.QueryString("company_id")
        cmd.Parameters.Add(ImageID)
        
        Dim dreader As SqlDataReader = cmd.ExecuteReader()
        dreader.Read()
        context.Response.BinaryWrite(DirectCast(dreader("company_logo"), Byte()))
        dreader.Close()
        con.Close()
    End Sub
 
    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class