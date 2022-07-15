<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Gosti_Delete.aspx.vb" Inherits="Hotelijerstvo.Gosti_Delete" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1>Brisanje podataka o gostima</h1>
            <table>
                <tr>
                    <td>Ime </td>
                    <td>
                        <asp:TextBox ID="txtIme" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
               </tr>
                <tr>
                    <td>Prezime </td>
                    <td>
                        <asp:TextBox ID="txtPrezime" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
               </tr>
                <tr>
                    <td>Adresa </td>
                    <td>
                        <asp:TextBox ID="txtAdresa" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
               </tr>
                <tr>
                    <td>Dob</td>
                    <td>
                        <asp:TextBox ID="txtDob" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
               </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnObrisi" runat="server" Text="Obriši" BackColor="Silver" BorderStyle="Double" />
                        <asp:Button ID="btnOdustani" runat="server" Text="Odustani" BackColor="Silver" BorderStyle="Double" />
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
