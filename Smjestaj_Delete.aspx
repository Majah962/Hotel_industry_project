<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Smjestaj_Delete.aspx.vb" Inherits="Hotelijerstvo.Smjestaj_Delete" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Brisanje smještaja</h1>
            <table>
                <tr>
                    <td>Vrsta smještaja</td>
                    <td>
                        <asp:TextBox ID="txtVrstaSmjestaja" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>  
                    </td>
                </tr>
                <tr>
                    <td>Broj noćenja</td>
                    <td>
                        <asp:TextBox ID="txtBrojNocenja" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>  
                    </td>
                </tr>
                <tr>
                    <td>Cijena noćenja</td>
                    <td>
                        <asp:TextBox ID="txtCijenaNocenja" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>  
                    </td>
                </tr>
                <tr>
                    <td>Šifra usluge</td>
                    <td>
                        <asp:TextBox ID="txtSifraUsluge" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>  
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnObrisi" runat="server" Text="Obriši" BackColor="Silver" BorderStyle="Double" style="height: 28px" />
                        <asp:Button ID="btnOdustani" runat="server" Text="Odustani" BackColor="Silver" BorderStyle="Double" />
                    </td>
              </tr>
          </table>
    </div>
    </form>
</body>
</html>
