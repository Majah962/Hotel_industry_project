Imports System.Data.SqlClient
Public Class Gosti_Delete
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Dim ConnStr As String = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
            Dim Conn As New SqlConnection(ConnStr)
            Dim SQL As String = "SELECT * FROM tblGosti WHERE GostiID=" & Request.QueryString("GostiID") & ";"

            Conn.Open()
            Dim Command As New SqlCommand(SQL, Conn)
            Dim DRead As SqlDataReader = Command.ExecuteReader()
            If DRead.HasRows = True Then
                While DRead.Read()
                    txtIme.Text = DRead("Ime")
                    txtPrezime.Text = DRead("Prezime")
                    txtAdresa.Text = DRead("Adresa")
                    txtDob.Text = DRead("Dob")
                End While
            End If
            DRead.Close()
            Conn.Close()
        End If
    End Sub
    Protected Sub btnObrisi_Click(sender As Object, e As EventArgs) Handles btnObrisi.Click
        Dim ConnStr As String = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
        Dim Conn As New SqlConnection(ConnStr)
        Dim SQL As String = "DELETE FROM tblGosti WHERE GostiID=" & Request.QueryString("GostiID") & ";"
        Conn.Open()

        Dim Command As New SqlCommand(SQL, Conn)
        Command.ExecuteNonQuery()

        Conn.Close()
        Response.Redirect("Gosti_Select.aspx")
    End Sub

    Protected Sub btnOdustani_Click(sender As Object, e As EventArgs) Handles btnOdustani.Click
        Response.Redirect("Gosti_Select.aspx")
    End Sub

    Protected Sub txtIme_TextChanged(sender As Object, e As EventArgs) Handles txtIme.TextChanged

    End Sub
End Class