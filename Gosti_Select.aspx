<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Gosti_Select.aspx.vb" Inherits="Hotelijerstvo.Gosti_Select" %>
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
                    <td>GostiID</td>
                    <td>Ime</td>
                    <td>Prezime</td>
                    <td>Adresa</td>
                    <td>Dob</td>
                    <td></td>
                    <td></td>
                </tr>
<%
    Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
    Dim Conn As New SqlConnection(Application("ConnStr"))

    Dim SQL As String = "SELECT * FROM tblGosti;"

    Conn.Open()

    Dim Command As New SqlCommand(SQL, Conn)

    Dim DRead As SqlDataReader = Command.ExecuteReader()

    If DRead.HasRows = True Then
        While DRead.Read()

 %>
                <tr>
                    <td><%= DRead("GostiID") %></td>
                    <td><%= DRead("Ime") %></td>
                    <td><%= DRead("Prezime") %></td>
                    <td><%= DRead("Adresa") %></td>
                    <td><%= DRead("Dob") %></td>
                    <td><a href="Gosti_Update.aspx?GostiID=<%= DRead("GostiID") %>">Uredi</a></td>
                    <td><a href="Gosti_Delete.aspx?GostiID=<%= DRead("GostiID") %>">Obriši</a></td>
                </tr> 
<%
            End While
        End If

        DRead.Close()
        Conn.Close()

    %>
            </table>
            <a href="Gosti_Insert.aspx">Novi gost</a>
            <br />
        </div>
    </form>
</body>
</html>