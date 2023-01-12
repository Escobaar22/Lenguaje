<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" method="html"/>
    <xsl:template match="/">
    <html>
        <head>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
        </head>
        <body>
            <a href="{/rss/channel/link}" role="button"><h1 class="text-center"><xsl:value-of select="/rss/channel/title"/></h1></a>
            <small class="text secondary"><xsl:value-of select="/rss/channel/description"/></small><br/>
            <xsl:value-of select="/rss/channel/language"/><br/>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"/>
        </body>
    </html>
    </xsl:template> 
</xsl:stylesheet>
