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
                    <xsl:for-each select="info-empresa">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                        </tr>
                    </xsl:for-each>                  
                </table>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>