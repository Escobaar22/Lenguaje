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
                        <xsl:for-each select="info-empresa">
                            <td colspan="3">
                                <xsl:value-of select="titulo"/><br/>
                                <xsl:value-of select="direccion"/><br/>
                                <xsl:value-of select="ciudad-codigo"/><br/>
                                C.I.F.: <xsl:value-of select="cif"/></br>
                                teléfono: <xsl:value-of select="telefono"/></br>
                                fax: <xsl:value-of select="fax"/>
                            </td>
                        </xsl:for-each>
                        <xsl:for-each select="info-emision">
                                <td colspan="3">
                                    Fecha: <xsl:value-of select="fecha"/><br/>
                                    <xsl:value-of select="numero-pedido"/></br>
                                    Forma de pago: <xsl:value-of select="pago"/><br/>
                                </td>
                        </xsl:for-each>
                    </tr>
                    
                </table>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>