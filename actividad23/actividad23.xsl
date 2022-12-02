<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <xsl:for-each select="factura">
                <table width="50%" border="1" cellspacing="0" cellpadding="5">
                    <tr colspan="6">
                        <th>Factura <xsl:value-of select="@nombre"/></th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            Equipos Digitales S.L.<br/>Av. Valladolid<br/>Madrid 28015<br/>C.I.F.: Q-9876543<br/>teléfono: 91.777.66.88<br/>fax: 91.777.66.99 
                        </td>
                        <td colspan="3">
                            <br/><br/>Fecha: 12-01-2005<br/>Pedido nº 731<br/> Forma de pago: EFECTIVO
                        </td>
                </table>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>