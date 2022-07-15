<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Gastronomija_Select.aspx.vb" Inherits="Hotelijerstvo.Gastronomija_Select" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>GastronomijaID</td>
                    <td>NazivUsluge</td>
                    <td>VrstaUsluge</td>
                    <td>Samoposluga</td>
                    <td>OcjenaRestorana</td>
                    <td></td>
                    <td></td>
                </tr>
<%
    Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
    Dim Conn As New SqlConnection(Application("ConnStr"))

    Dim SQL As String = "SELECT * FROM tblGastronomija"

    Conn.Open()

    Dim Command As New SqlCommand(SQL, Conn)

    Dim DRead As SqlDataReader = Command.ExecuteReader()

    If DRead.HasRows = True Then
        While DRead.Read()
    %>
                <tr>
                    <td><%= DRead("GastronomijaID") %></td>
                    <td><%= DRead("NazivUsluge") %></td>
                    <td><%= DRead("VrstaUsluge") %></td>
                    <td><%= DRead("Samoposluga") %></td>
                    <td><%= DRead("OcjenaRestorana") %></td>
                    <td><a href="Gastronomija_Update.aspx?GastronomijaID=<%= DRead("GastronomijaID") %>">Uredi</a></td>
                    <td><a href="Gastronomija_Delete.aspx?GastronomijaID=<%= DRead("GastronomijaID") %>">Obriši</a></td>
                </tr> 
<%
        End While
    End If

    DRead.Close()
    Conn.Close()

    %>
            </table>
            <a href="Gastronomija_Insert.aspx">Nova vrsta gastronomije</a>
            <br />
        </div>
    </form>
</body>
</html>