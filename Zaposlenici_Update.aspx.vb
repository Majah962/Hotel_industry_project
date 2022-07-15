Imports System.Data.SqlClient
Public Class Zaposlenici_Update
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
            Dim Conn As New SqlConnection(Application("ConnStr"))
            Dim SQL As String = "SELECT * FROM tblZaposlenici WHERE ZaposleniciID=" & Request.QueryString("ZaposleniciID") & ";"

            Conn.Open()

            Dim Command As New SqlCommand(SQL, Conn)

            Dim DRead As SqlDataReader = Command.ExecuteReader()

            If DRead.HasRows = True Then
                While DRead.Read()
                    txtImeZaposlenika.Text = DRead("ImeZaposlenika")
                    txtPrezimeZaposlenika.Text = DRead("PrezimeZaposlenika")
                    txtRadnoMjesto.Text = DRead("RadnoMjesto")
                    txtSifraPristupnice.Text = DRead("SifraPristupnice")
                End While
            End If
            DRead.Close()
            Conn.Close()
        End If
    End Sub

    Protected Sub BtnOdustani_Click(sender As Object, e As EventArgs) Handles btnOdustani.Click
        Response.Redirect("Zaposlenici_Select.aspx")
    End Sub
    Protected Sub BtnUredi_Click(sender As Object, e As EventArgs) Handles btnUredi.Click
        Dim Conn As New SqlConnection(Application("ConnStr"))
        Conn.Open()

        Using Conn
            Dim SQL As String = "UPDATE tblZaposlenici SET ImeZaposlenika='" & txtImeZaposlenika.Text & "', "
            SQL = SQL & "PrezimeZaposlenika='" & txtPrezimeZaposlenika.Text & "', "
            SQL = SQL & "RadnoMjesto='" & txtRadnoMjesto.Text & "', "
            SQL = SQL & "SifraPristupnice=" & txtSifraPristupnice.Text & ""
            SQL = SQL & " WHERE ZaposleniciID=" & Request.QueryString("ZaposleniciID")

            Dim Command As New SqlCommand(SQL, Conn)
            Command.ExecuteNonQuery()
        End Using

        Conn.Close()

        Response.Redirect("Zaposlenici_Select.aspx")
    End Sub

    Protected Sub txtImeZaposlenika_TextChanged(sender As Object, e As EventArgs) Handles txtImeZaposlenika.TextChanged

    End Sub
End Class