<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <table width="50%" border="1" cellspacing="0" cellpadding="5">
                <tr>
                    <th colspan="6">CDs en oferta</th>
                </tr>
                <tr style="text-align:left">
                    <th>Título</th>
                    <th>Artista</th>
                    <th>País</th>
                    <th>Compañía discográfica</th>
                    <th>Precio</th>
                    <th>Año de publicación</th>
                </tr>
                <xsl:for-each select="ofertas/cd">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="artista"/></td>
                        <td><xsl:value-of select="pais"/></td>
                        <td><xsl:value-of select="discografica"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="publicacion"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>