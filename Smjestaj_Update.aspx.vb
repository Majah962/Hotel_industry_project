Imports System.Data.SqlClient
Public Class Smjestaj_Update
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
            Dim Conn As New SqlConnection(Application("ConnStr"))
            Dim SQL As String = "SELECT * FROM tblSmjestaj WHERE SmjestajID=" & Request.QueryString("SmjestajID") & ";"

            Conn.Open()

            Dim Command As New SqlCommand(SQL, Conn)

            Dim DRead As SqlDataReader = Command.ExecuteReader()

            If DRead.HasRows = True Then
                While DRead.Read()
                    txtVrstaSmjestaja.Text = DRead("VrstaSmjestaja")
                    txtBrojNocenja.Text = DRead("Brojnocenja")
                    txtCijenaNocenja.Text = DRead("CijenaNocenja")
                    txtSifraUsluge.Text = DRead("SifraUsluge")
                End While
            End If
            DRead.Close()
            Conn.Close()
        End If
    End Sub

    Protected Sub BtnOdustani_Click(sender As Object, e As EventArgs) Handles btnOdustani.Click
        Response.Redirect("Smjestaj_Select.aspx")
    End Sub

    Protected Sub BtnUredi_Click(sender As Object, e As EventArgs) Handles btnUredi.Click
        Dim Conn As New SqlConnection(Application("ConnStr"))
        Conn.Open()

        Using Conn
            Dim SQL As String = "UPDATE tblSmjestaj SET VrstaSmjestaja='" & txtVrstaSmjestaja.Text & "', "
            SQL = SQL & "BrojNocenja='" & txtBrojNocenja.Text & "', "
            SQL = SQL & "CijenaNocenja='" & txtCijenaNocenja.Text & "', "
            SQL = SQL & "SifraUsluge=" & txtSifraUsluge.Text & ""
            SQL = SQL & " WHERE SmjestajID=" & Request.QueryString("SmjestajID")

            Dim Command As New SqlCommand(SQL, Conn)
            Command.ExecuteNonQuery()
        End Using

        Conn.Close()

        Response.Redirect("Smjestaj_Select.aspx")
    End Sub

    Protected Sub txtVrstaSmjestaja_TextChanged(sender As Object, e As EventArgs) Handles txtVrstaSmjestaja.TextChanged

    End Sub
End Class