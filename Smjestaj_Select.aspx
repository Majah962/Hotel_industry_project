<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Smjestaj_Select.aspx.vb" Inherits="Hotelijerstvo.Smjestaj_Select" %>
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
                     <td>SmjestajID</td>
                    <td>VrstaSmjestaja</td>
                    <td>BrojNocenja</td>
                    <td>CijenaNocenja</td>
                    <td>SifraUsluge</td>
                    <td></td>
                    <td></td>
                </tr>
                <%
                    Application("ConnStr") = "Server=localhost\SQLEXPRESS;Database=Hotelijerstvo;Trusted_Connection=yes;"
                    Dim Conn As New SqlConnection(Application("ConnStr"))

                    Dim SQL As String = "SELECT * FROM tblSmjestaj"

                    Conn.Open()

                    Dim Command As New SqlCommand(SQL, Conn)

                    Dim DRead As SqlDataReader = Command.ExecuteReader()
                    If DRead.HasRows = True Then

                        While DRead.Read()
                %>
                <tr>
                    <td><%= DRead("SmjestajID") %></td>
                    <td><%= DRead("VrstaSmjestaja") %></td>
                    <td><%= DRead("BrojNocenja") %></td>
                    <td><%= DRead("CijenaNocenja") %></td>
                    <td><%= DRead("SifraUsluge") %></td>
                    <td><a href="Smjestaj_Update.aspx?SmjestajID=<%= DRead("SmjestajID") %>">Uredi</a></td>
                    <td><a href="Smjestaj_Delete.aspx?SmjestajID=<%= DRead("SmjestajID") %>">Obriši</a></td>
                </tr>
                <%
                End While
            End If

            DRead.Close()
            Conn.Close()

                %>
            </table>
            <a href="Smjestaj_Insert.aspx">Novi smještaj</a>
            <br />
        </div>
    </form>
</body>
</html>