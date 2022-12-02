<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <table width="80%" border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th rowspan="2">Descripcion de cada hecho</th>
                <th colspan="3">Fecha</th>
            </tr>
            <tr>
                <th>Día</th>
                <th>Mes</th>
                <th>Año</th>
            </tr>
            <xsl:for-each select="eventos/evento">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="dia"/></td>
                <td><xsl:value-of select="mes"/></td>
                <td><xsl:value-of select="año"/></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
