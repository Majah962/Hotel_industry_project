Imports System.Data.SqlClient
Public Class Gosti_Update
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
            Dim Conn As New SqlConnection(Application("ConnStr"))
            Dim SQL As String = "SELECT *  FROM tblGosti WHERE GostiID=" & Request.QueryString("GostiID") & ";"

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

    Protected Sub BtnOdustani_Click(sender As Object, e As EventArgs) Handles btnOdustani.Click
        Response.Redirect("Gosti_Select.aspx")
    End Sub
    Protected Sub BtnUredi_Click(sender As Object, e As EventArgs) Handles btnUredi.Click
        Dim Conn As New SqlConnection(Application("ConnStr"))
        Conn.Open()

        Using Conn
            Dim SQL As String = "UPDATE tblGosti SET Ime='" & txtIme.Text & "', "
            SQL = SQL & "Prezime='" & txtPrezime.Text & "', "
            SQL = SQL & "Adresa='" & txtAdresa.Text & "', "
            SQL = SQL & "Dob=" & txtDob.Text & ""
            SQL = SQL & " WHERE GostiID=" & Request.QueryString("GostiID")

            Dim Command As New SqlCommand(SQL, Conn)
            Command.ExecuteNonQuery()
        End Using

        Conn.Close()

        Response.Redirect("Gosti_Select.aspx")
    End Sub

    Protected Sub txtIme_TextChanged(sender As Object, e As EventArgs) Handles txtIme.TextChanged

    End Sub
End Class