<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <xsl:for-each select="factura">
                <table width="50%" border="1" cellspacing="0" cellpadding="5">
                    <tr>
                        <th colspan="6">Factura <xsl:value-of select="@nombre"/></th>
                    </tr>       
                    <tr>               
                        <td colspan="3">
                            <xsl:for-each select="info-empresa">
                                <xsl:value-of select="nombre"/><br/>
                                <xsl:value-of select="direccion"/><br/>
                                <xsl:value-of select="ciudad-codigo"/><br/>
                                C.I.F.: <xsl:value-of select="cif"/><br/>
                                teléfono: <xsl:value-of select="telefono"/><br/>
                                fax: <xsl:value-of select="fax"/>
                            </xsl:for-each>
                        </td>
                        <td colspan="3">
                            <xsl:for-each select="info-emision">
                                Fecha: <xsl:value-of select="fecha"/><br/>
                                <xsl:value-of select="numero-pedido"/><br/>
                                Forma de pago: <xsl:value-of select="pago"/><br/>
                            </xsl:for-each>
                        </td>
                    </tr>
                    <tr >
                        <td colspan="6"><b>Datos CLIENTE</b></td>
                    </tr>
                                      
                </table>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>