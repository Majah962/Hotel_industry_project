﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Zaposlenici_Insert.aspx.vb" Inherits="Hotelijerstvo.Zaposlenici_Insert" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           <h1>Unos novog Zaposlenika</h1>
            <table>
                <tr>
                    <td>Ime zaposlenika:</td>
                    <td> 
                        <asp:TextBox ID="txtImeZaposlenika" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Prezime zaposlenika:</td>
                    <td> 
                        <asp:TextBox ID="txtPrezimeZaposlenika" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Radno mjesto:</td>
                    <td> 
                        <asp:TextBox ID="txtRadnoMjesto" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Šifra pristupnice:</td>
                    <td> 
                        <asp:TextBox ID="txtSifraPristupnice" runat="server" BackColor="Silver" BorderStyle="Double"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnUnesi" runat="server" Text="Unesi" BackColor="Silver" BorderStyle="Double" />
                        <asp:Button ID="btnOdustani" runat="server" Text="Odustani" BackColor="Silver" BorderStyle="Double" />
                    </td>
                </tr>
         </table>
    </div>
    </form>
</body>
</html>
