<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/" 
    xmlns:content="http://purl.org/rss/1.0/modules/content/" 
    xmlns:dcterms="http://purl.org/dc/terms/" 
    xmlns:atom="http://www.w3.org/2005/Atom" 
    xmlns:media="http://search.yahoo.com/mrss/">

    <xsl:output indent="yes" method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
            </head>
            <body STYLE="margin:30px 40px 20px">
                <a href="{/rss/channel/link}" role="button"><h1 class="text-center"><xsl:value-of select="/rss/channel/title"/></h1></a>
                <small class="text secondary"><xsl:value-of select="/rss/channel/description"/></small><br/>
                <xsl:value-of select="/rss/channel/lastBuildDate"/><p/>

                <xsl:for-each select="rss/channel/item">
                <div class="card">
                    <div class="card text-center">
                        <div class="card-header">
                            <img src="{media:content/media:thumbnail/@url}" class="card-img-top" alt="{media:content/media:title}" />
                        </div>
                        <div class="card-body" width="100" height="100">
                          <h5 class="card-title">Special title treatment</h5>
                          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                          <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                        <div class="card-footer text-muted">
                          2 days ago
                        </div>
                      </div>
                </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template> 
</xsl:stylesheet>
