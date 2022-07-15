﻿Imports System.Data.SqlClient
Public Class Hoteli_Update
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
            Dim Conn As New SqlConnection(Application("ConnStr"))
            Dim SQL As String = "SELECT * FROM tblHoteli WHERE HoteliID=" & Request.QueryString("HoteliID") & ";"

            Conn.Open()

            Dim Command As New SqlCommand(SQL, Conn)

            Dim DRead As SqlDataReader = Command.ExecuteReader()

            If DRead.HasRows = True Then
                While DRead.Read()
                    txtNazivHotela.Text = DRead("NazivHotela")
                    txtLokacijaHotela.Text = DRead("LokacijaHotela")
                    txtOstalaPonuda.Text = DRead("OstalaPonuda")
                    txtZvjezdicaHotela.Text = DRead("ZvjezdicaHotela")
                End While
            End If
            DRead.Close()
            Conn.Close()
        End If
    End Sub

    Protected Sub BtnOdustani_Click(sender As Object, e As EventArgs) Handles btnOdustani.Click
        Response.Redirect("Hoteli_Select.aspx")
    End Sub
    Protected Sub BtnUredi_Click(sender As Object, e As EventArgs) Handles btnUredi.Click
        Dim Conn As New SqlConnection(Application("ConnStr"))
        Conn.Open()

        Using Conn
            Dim SQL As String = "UPDATE tblHoteli SET NazivHotela='" & txtNazivHotela.Text & "', "
            SQL = SQL & "LokacijaHotela='" & txtLokacijaHotela.Text & "', "
            SQL = SQL & "OstalaPonuda='" & txtOstalaPonuda.Text & "', "
            SQL = SQL & "ZvjezdicaHotela=" & txtZvjezdicaHotela.Text & ""
            SQL = SQL & " WHERE HoteliID=" & Request.QueryString("HoteliID")

            Dim Command As New SqlCommand(SQL, Conn)
            Command.ExecuteNonQuery()
        End Using

        Conn.Close()

        Response.Redirect("Hoteli_Select.aspx")
    End Sub

    Protected Sub txtNazivHotela_TextChanged(sender As Object, e As EventArgs) Handles txtNazivHotela.TextChanged

    End Sub
End Class