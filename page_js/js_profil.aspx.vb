Imports System.Data
Imports System.Data.SqlClient
Partial Class page_js_js_profil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand
        Dim sql As String
        Dim jsusername As String = Session("js_username")

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        con.Open()

        sql = "SELECT * FROM [jobseeker] WHERE js_username = '" + jsusername + "'"
        xCommand.Connection = con
        xCommand.CommandText = sql
        Dim js_id As String = xCommand.ExecuteScalar
        Session("js_id") = js_id

        Label2.Text = jsusername

        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
        Panel8.Visible = False
        Panel9.Visible = False
        Panel10.Visible = False
        Panel11.Visible = False
        Panel12.Visible = False
        Panel13.Visible = False

        Dim da As SqlDataReader
        da = xCommand.ExecuteReader()
            If da.HasRows Then
                da.Read()
            Label3.Text = da(1)
            Label4.Text = da(2)
            Label5.Text = da(3)
            Label6.Text = da(4)
            Label7.Text = da(5)
            Label8.Text = da(6)
            Label9.Text = da(7)
            Label10.Text = da(10)
            Label11.Text = da(11)
            Label12.Text = da(12)
            Label13.Text = da(13)
            Label14.Text = da(8)
            Label15.Text = da(9)
            Else
            Response.Write("<script>alert('Your data is not Found')</script>")
            Response.Redirect("../home.aspx")
            End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Panel1.Visible = True
        Panel2.Visible = True
        Panel3.Visible = True
        Panel4.Visible = True
        Panel5.Visible = True
        Panel6.Visible = True
        Panel7.Visible = True
        Panel8.Visible = True
        Panel9.Visible = True
        Panel10.Visible = True
        Panel11.Visible = True
        Panel12.Visible = True
        Panel13.Visible = True

        TextBox1.Text = Label3.Text
        TextBox2.Text = Label4.Text
        DropDownList1.SelectedValue = Label5.Text
        TextBox3.Text = Label6.Text
        TextBox4.Text = Label7.Text
        TextBox5.Text = Label8.Text
        DropDownList2.SelectedValue = Label9.Text
        DropDownList3.SelectedValue = Label10.Text
        TextBox7.Text = Label11.Text
        TextBox8.Text = Label12.Text
        DropDownList4.SelectedValue = Label13.Text
        TextBox9.Text = Label14.Text
        TextBox10.Text = Label15.Text
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'UPDATE DATA
        Dim con As New SqlConnection
        Dim xCommand As New SqlCommand

        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Nanda Ayu Annisa\Project_PWEB\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True"
        'con.Open()

        'Create SQL Command
        Dim cmd As New SqlCommand()
        cmd.CommandText = "UPDATE jobseeker SET js_firstname = @js_firstname, js_lastname = @js_lastname, js_gender = @js_gender, js_email = @js_email, js_telp = @js_telp, js_address = @js_address, js_city = @js_city, js_diploma = @js_diploma, js_alumna = @js_alumna, js_graduateyear = @js_graduateyear, js_category = @js_category, js_username = @js_username, js_password = @js_password WHERE js_username = '" + Label2.Text + "'"
        cmd.CommandType = CommandType.Text
        cmd.Connection = con

        Dim a As New SqlParameter("@js_firstname", SqlDbType.VarChar, 50)
        a.Value = TextBox1.Text.ToString()
        cmd.Parameters.Add(a)

        Dim b As New SqlParameter("@js_lastname", SqlDbType.VarChar, 50)
        b.Value = TextBox2.Text.ToString()
        cmd.Parameters.Add(b)

        Dim c As New SqlParameter("@js_gender", SqlDbType.VarChar, 50)
        c.Value = DropDownList1.SelectedValue.ToString()
        cmd.Parameters.Add(c)

        Dim d As New SqlParameter("@js_email", SqlDbType.VarChar, 50)
        d.Value = TextBox3.Text.ToString()
        cmd.Parameters.Add(d)

        Dim n As New SqlParameter("@js_telp", SqlDbType.VarChar, 50)
        n.Value = TextBox4.Text.ToString()
        cmd.Parameters.Add(n)

        Dim f As New SqlParameter("@js_address", SqlDbType.VarChar, 50)
        f.Value = TextBox5.Text.ToString()
        cmd.Parameters.Add(f)

        Dim g As New SqlParameter("@js_city", SqlDbType.VarChar, 50)
        g.Value = DropDownList2.SelectedValue.ToString()
        cmd.Parameters.Add(g)

        Dim h As New SqlParameter("@js_diploma", SqlDbType.VarChar, 50)
        h.Value = DropDownList3.SelectedValue.ToString()
        cmd.Parameters.Add(h)

        Dim i As New SqlParameter("@js_alumna", SqlDbType.VarChar, 50)
        i.Value = TextBox7.Text.ToString()
        cmd.Parameters.Add(i)

        Dim j As New SqlParameter("@js_graduateyear", SqlDbType.VarChar, 50)
        j.Value = TextBox8.Text.ToString()
        cmd.Parameters.Add(j)

        Dim k As New SqlParameter("@js_category", SqlDbType.VarChar, 50)
        k.Value = DropDownList4.SelectedValue.ToString()
        cmd.Parameters.Add(k)

        Dim l As New SqlParameter("@js_username", SqlDbType.VarChar, 50)
        l.Value = TextBox9.Text.ToString()
        cmd.Parameters.Add(l)

        Dim m As New SqlParameter("@js_password", SqlDbType.VarChar, 50)
        m.Value = TextBox10.Text.ToString()
        cmd.Parameters.Add(m)

        con.Open()
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        Response.Write("<script>alert('Your data is inserted')</script>")
        Response.Redirect("js_profil.aspx")

    End Sub
End Class
