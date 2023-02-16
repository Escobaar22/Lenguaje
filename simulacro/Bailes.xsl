<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match ="/">
<html>
    <body>
        <h1>ACADEMIDA DE BAILE CAMPOAMORES</h1>
        <table width="78%" border="2" cellpadding = "10" cellspacing = "0">
            <tr>
                <th>Bailes</th>
                <th>Cuota</th>
                <th>Plazas</th>
                <th>Fecha de inicio</th>
                <th>Fecha de fin</th>
                <th>Dias</th>
                <th>Profesor</th>
                <th>Sala</th>
            </tr>
            <xsl:for-each select = "bailes/baile">
                <tr>
                    <td><xsl:value-of select = "nombre" /></td>
                    <td>
                        <xsl:value-of select = "precio"/>
                        <xsl:value-of select = "precio/@moneda"/>/
                        <xsl:value-of select = "precio/@periodo"/>
                    </td>
                    <td><xsl:value-of select = "plazas"/></td>
                    <td><xsl:value-of select = "inicio"/></td>
                    <td><xsl:value-of select = "fin"/></td>
                    <td><xsl:value-of select = "dias"/></td>
                    <td><xsl:value-of select = "profesor"/></td>
                    <td><xsl:value-of select = "sala"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html> 
</xsl:template>
</xsl:stylesheet>
