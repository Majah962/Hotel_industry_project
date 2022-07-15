<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Gastronomija_Update.aspx.vb" Inherits="Hotelijerstvo.Gastronomija_Update" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1>Uređivanje gastronomije</h1>
            <table>
                <tr>
                    <td>Naziv usluge:</td>
                    <td>
                        <asp:TextBox ID="txtNazivUsluge" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Vrsta usluge:</td>
                    <td>
                        <asp:TextBox ID="txtVrstaUsluge" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Samoposluga:</td>
                    <td>
                        <asp:TextBox ID="txtSamoposluga" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ocjena restorana:</td>
                    <td>
                        <asp:TextBox ID="txtOcjenaRestorana" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnUredi" runat="server" Text="Uredi" BackColor="Silver" BorderStyle="Double" />
                        <asp:Button ID="btnOdustani" runat="server" Text="Odustani" BackColor="Silver" BorderStyle="Double" />
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
