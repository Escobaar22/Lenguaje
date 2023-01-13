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
        <body>
            <a href="{/rss/channel/link}" role="button"><h1 class="text-center"><xsl:value-of select="/rss/channel/title"/></h1></a>
            <small class="text secondary"><xsl:value-of select="/rss/channel/description"/></small><br/>
            <xsl:value-of select="/rss/channel/lastBuildDate"/>
            <xsl:for-each select="rss/channel/item">
            <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="{media:content/media:thumbnall/@url}" class="d-block w-100" alt="{media:content/media:title}"/>
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
            </div>
                
                
              
            </xsl:for-each>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"/>
        </body>
    </html>
    </xsl:template> 
</xsl:stylesheet>
