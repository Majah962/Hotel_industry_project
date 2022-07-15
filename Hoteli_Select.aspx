<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hoteli_Select.aspx.vb" Inherits="Hotelijerstvo.Hoteli_Select" %>
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
                    <td>HoteliID</td>
                    <td>NazivHotela</td>
                    <td>LokacijaHotela</td>
                    <td>OstalaPonuda</td>
                    <td>ZvjezdicaHotela</td>
                    <td></td>
                    <td></td>
                </tr>
<%
    Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
    Dim Conn As New SqlConnection(Application("ConnStr"))

    Dim SQL As String = "SELECT * FROM tblHoteli"

    Conn.Open()

    Dim Command As New SqlCommand(SQL, Conn)

    Dim DRead As SqlDataReader = Command.ExecuteReader()

    If DRead.HasRows = True Then
        While DRead.Read()
    %>
                <tr>
                    <td><%= DRead("HoteliID") %></td>
                    <td><%= DRead("NazivHotela") %></td>
                    <td><%= DRead("LokacijaHotela") %></td>
                    <td><%= DRead("OstalaPonuda") %></td>
                    <td><%= DRead("ZvjezdicaHotela") %></td>
                    <td><a href="Hoteli_Update.aspx?HoteliID=<%= DRead("HoteliID") %>">Uredi</a></td>
                    <td><a href="Hoteli_Delete.aspx?HoteliID=<%= DRead("HoteliID") %>">Obriši</a></td>
                </tr> 
<%
        End While
    End If

    DRead.Close()
    Conn.Close()

    %>
            </table>
            <a href="Hoteli_Insert.aspx">Novi hotel</a>
            <br />
        </div>
    </form>
</body>
</html>