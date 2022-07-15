<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Zaposlenici_Select.aspx.vb" Inherits="Hotelijerstvo.Zaposlenici_Select" %>
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
                    <td>ZaposleniciID</td>
                    <td>ImeZaspolenika</td>
                    <td>PrezimeZaposlenika</td>
                    <td>RadnoMjesto</td>
                    <td>SifraPristupnice</td>
                    <td></td>
                    <td></td>
                </tr>
<%

    Dim ConnStr As String = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
    Dim Conn As New SqlConnection(ConnStr)
    Dim SQL As String = "SELECT * FROM tblZaposlenici;"

    Conn.Open()

    Dim Command As New SqlCommand(SQL, Conn)

    Dim DRead As SqlDataReader = Command.ExecuteReader()

    If DRead.HasRows = True Then
        While DRead.Read()
    %>
                <tr>
                    <td><%= DRead("ZaposleniciID") %></td>
                    <td><%= DRead("ImeZaposlenika") %></td>
                    <td><%= DRead("PrezimeZaposlenika") %></td>
                    <td><%= DRead("RadnoMjesto") %></td>
                    <td><%= DRead("SifraPristupnice") %></td>
                    <td><a href="Zaposlenici_Update.aspx?ZaposleniciID=<%= DRead("ZaposleniciID") %>">Uredi</a></td>
                    <td><a href="Zaposlenici_Delete.aspx?ZaposleniciID=<%= DRead("ZaposleniciID") %>">Obriši</a></td>
                </tr> 
<%
        End While
    End If

    DRead.Close()
    Conn.Close()

    %>
            </table>
            <a href="Zaposlenici_Insert.aspx">Novi Zaposlenik</a>
            <br />
        </div>
    </form>
</body>
</html