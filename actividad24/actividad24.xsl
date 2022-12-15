<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" method="text"/>
    <xsl:template match="/">
        {"ofertas": 
            { "cd": 
                [<xsl:for-each select="ofertas/cd">
                        {
                        "titulo": "<xsl:value-of select="titulo"/>",
                        "artista": "<xsl:value-of select="artista"/>",
                        "pais": "<xsl:value-of select="pais"/>",
                        "discografia": "<xsl:value-of select="discografia"/>",
                        "precio": "<xsl:value-of select="precio"/>",
                        "publicacion": "<xsl:value-of select="publicacion"/>"
                        }
                        <xsl:if test="position() &lt; last()">,</xsl:if>
                </xsl:for-each>] 
            } 
        }
    </xsl:template>
</xsl:stylesheet>