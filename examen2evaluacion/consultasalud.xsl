<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match ="/">

<html>
    <body>
        <h1>CONSULTA DE SALUD INTEGRAL "BUENAVIDA"</h1>
        <table width="85%" border="2" cellpadding = "10" cellspacing = "0">
            <tr>
                <th rowspan = "2">Servicios</th>
                <th colspan = "2">Cuota</th>
                <th rowspan = "2">Plazas</th>
                <th rowspan = "2">Dias</th>
                <th colspan = "2">Horarios</th>
                <th rowspan = "2">Tutor</th>
            </tr>
            <tr>
                <th>Precio</th>
                <th>Bonos</th>
                <th>Mañana</th>
                <th>Tarde</th>
            </tr>
            <xsl:for-each select = "servicios/servicio">
            <tr>
                <td><xsl:value-of select = "@nombre"/></td>
                <td><xsl:value-of select = "cuota/precio"/></td>
                <td><xsl:value-of select = "cuota/bono" /></td>
                <td><xsl:value-of select = "plazas"/></td>
                <td><xsl:value-of select = "dias"/></td>
                <xsl:for-each select = "horarios">
                    <td><xsl:value-of select = "horariom"/></td>
                    <td><xsl:value-of select = "horariot"/></td>
                </xsl:for-each>
                <td><xsl:value-of select = "empleados"/></td>
            </tr>
        </xsl:for-each>
        </table>
    </body>
</html>

</xsl:template>

</xsl:stylesheet>