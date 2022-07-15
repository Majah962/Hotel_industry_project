<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hoteli_Update.aspx.vb" Inherits="Hotelijerstvo.Hoteli_Update" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1>Uređivanje hotela</h1>
            <table>
                <tr>
                    <td>Naziv hotela:</td>
                    <td> 
                        <asp:TextBox ID="txtNazivHotela" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Lokacija hotela:</td>
                    <td> 
                        <asp:TextBox ID="txtLokacijaHotela" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>OstalaPonuda:</td>
                    <td> 
                        <asp:TextBox ID="txtOstalaPonuda" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Zvjezdica hotela:</td>
                    <td> 
                        <asp:TextBox ID="txtZvjezdicaHotela" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
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
