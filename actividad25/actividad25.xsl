<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" method="text"/>
    <xsl:template match="/">
        factura: <xsl-value-of select="/factura/@nombre"/>
        info-empresa:
            nombre: <xsl-value-of select="/factura/info-empresa/nombre"/>
            direccion: <xsl-value-of select="/factura/info-empresa/direccion"/>
            ciudad-codigo: <xsl-value-of select="/factura/info-empresa/ciudad-codigo"/>
            cif: <xsl-value-of select="/factura/info-empresa/cif"/>
            telefono: <xsl-value-of select="/factura/info-empresa/telefono"/>
            fax: <xsl-value-of select="/factura/info-empresa/fax"/> 
        info-emision:
            fecha: <xsl-value-of select="/factura/info-emision/fecha"/> 
            numero-pedido: <xsl-value-of select="/factura/info-emision/numero-pedido"/>
            pago: <xsl-value-of select="/factura/info-emision/pago"/>
        datos-cliente:
            numero-cliente: <xsl-value-of select="/factura/datos-cliente/numero-cliente"/>
            nombre: <xsl-value-of select="/factura/datos-cliente/nombre"/>
            direccion: <xsl-value-of select="/factura/datos-cliente/direccion"/>
            poblacion: <xsl-value-of select="/factura/datos-cliente/poblacion"/>
            codigo-postal: <xsl-value-of select="/factura/datos-cliente/codigo-postal"/>
            provincia: <xsl-value-of select="/factura/datos-cliente/provincia"/>
        datos-factura:
            objeto:
            <xsl:for-each select="factura/datos-factura/objetos">
                - ref: <xsl-value-of select="/ref"/>
                - nombre: <xsl-value-of select="/nombre"/>
                - cant: <xsl-value-of select="/cant"/>
                - precio: <xsl-value-of select="/precio"/>
                - iva: <xsl-value-of select="/iva"/>
                - importe: <xsl-value-of select="/importe"/>
            </xsl:for-each> 
            base-imponible: <xsl-value-of select="/factura/base-imponible"/>
            iva: <xsl-value-of select="/factura/iva"/>
            cuota-iva: <xsl-value-of select="/factura/cuota-iva"/>
            total-factura: <xsl-value-of select="/factura/total-factura"/>
           
    </xsl:template>
</xsl:stylesheet>