<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <xsl:for-each select="factura">
                <table width="60%" border="1" cellspacing="0" cellpadding="5">
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
                    <tr>
                        <td colspan="6">
                            <xsl:for-each select="datos-cliente">
                                nº cliente: <xsl:value-of select="numero-cliente"/><br/>
                                Nombre: <xsl:value-of select="nombre"/><br/>
                                Dirección de envio: <xsl:value-of select="direccion"/><br/>
                                Población: <xsl:value-of select="poblacion"/><br/>
                                cod. postal: <xsl:value-of select="codigo-postal"/><br/>
                                Provincia: <xsl:value-of select="provincia"/>
                            </xsl:for-each> 
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6"><b>Datos FACTURA</b></td>
                    </tr>
                    <tr style="text-align:right">
                        <th>REF.</th>
                        <th>DESCRIPCIÓN</th>
                        <th>CANT.</th>
                        <th>PRECIO.</th>
                        <th>I.V.A.</th>
                        <th>IMPORTE</th>
                    </tr>
                    <xsl:for-each select="datos-factura/objeto">
                        <tr style="text-align:right">
                            <td><xsl:value-of select="ref"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="cant"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="iva"/></td>
                            <td><xsl:value-of select="importe"/></td>
                        </tr>
                    </xsl:for-each>
                    <tr style="text-align:left">
                       <th colspan="2">Base imponible</th> 
                       <th colspan="2">% I.V.A.</th>
                       <th colspan="2">Cuota I.V.A.</th>
                    </tr>
                    <tr>
                        <td colspan="2"><xsl:value-of select="base.imponible"/></td>
                        <td colspan="2"><xsl:value-of select="iva"/></td>
                        <td colspan="2"><xsl:value-of select="cuota-iva"/></td>
                    </tr>
                    <tr>
                        <th>TOTAL FACTURA: <xsl:value-of select="total-factura"/></th>
                    </tr>
                </table>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>