Imports System.Data.SqlClient
Public Class Gastronomija_Delete
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
            Dim Conn As New SqlConnection(Application("ConnStr"))

            Dim SQL As String = "SELECT * FROM tblGastronomija WHERE GastronomijaID=" & Request.QueryString("GastronomijaID")

            Conn.Open()

            Dim Command As New SqlCommand(SQL, Conn)

            Dim DRead As SqlDataReader = Command.ExecuteReader()

            If DRead.HasRows = True Then
                While DRead.Read()
                    txtNazivUsluge.Text = DRead("NazivUsluge")
                    txtVrstaUsluge.Text = DRead("VrstaUsluge")
                    txtSamoposluga.Text = DRead("Samoposluga")
                    txtOcjenaRestorana.Text = DRead("OcjenaRestorana")
                End While
            End If
            DRead.Close()
            Conn.Close()
        End If
    End Sub
    Protected Sub BtnOdustani_Click(sender As Object, e As EventArgs) Handles btnOdustani.Click
        Response.Redirect("Gastronomija_Select.aspx")
    End Sub
    Protected Sub BtnObrisi_Click(sender As Object, e As EventArgs) Handles btnObrisi.Click
        Dim Conn As New SqlConnection(Application("ConnStr"))
        Conn.Open()

        Using Conn
            Dim SQL As String = "DELETE FROM tblGastronomija WHERE GastronomijaID=" & Request.QueryString("GastronomijaID")

            Dim Command As New SqlCommand(SQL, Conn)
            Command.ExecuteNonQuery()
        End Using

        Conn.Close()

        Response.Redirect("Gastronomija_Select.aspx")
    End Sub

    Protected Sub txtNazivUsluge_TextChanged(sender As Object, e As EventArgs) Handles txtNazivUsluge.TextChanged

    End Sub
End Class