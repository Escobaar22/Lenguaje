<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <xsl:for-each select="factura">
                <table width="50%" border="1" cellspacing="0" cellpadding="5">
                    <tr>
                        <th>Factura <xsl:value-of select="@nombre"/></th>
                    </tr>
                </table>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>