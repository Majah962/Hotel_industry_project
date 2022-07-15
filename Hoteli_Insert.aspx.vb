Imports System.Data.SqlClient
Public Class Hoteli_Insert
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub BtnUnesi_Click(sender As Object, e As EventArgs) Handles btnUnesi.Click
        Dim ConnStr As String = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
        Dim Conn As New SqlConnection(ConnStr)
        Dim SQL As String = "INSERT INTO tblHoteli (NazivHotela,LokacijaHotela,OstalaPonuda,ZvjezdicaHotela) Values ('" & txtNazivHotela.Text & "','" & txtLokacijaHotela.Text & "','" & txtOstalaPonuda.Text & "'," & txtZvjezdicaHotela.Text & ");"
        Conn.Open()
        Dim Command As New SqlCommand(SQL, Conn)
        Command.ExecuteNonQuery()
        Conn.Close()
        Response.Redirect("Hoteli_Select.aspx")

    End Sub
    Protected Sub BtnOdustani_Click(sender As Object, e As EventArgs) Handles btnOdustani.Click
        Response.Redirect("Hoteli_Select.aspx")
    End Sub

    Protected Sub txtNazivHotela_TextChanged(sender As Object, e As EventArgs) Handles txtNazivHotela.TextChanged

    End Sub
End Class