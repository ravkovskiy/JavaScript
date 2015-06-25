<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:template match="/">
            <html>
                <body>
                    <xsl:apply-templates  />
                </body>
            </html>
        </xsl:template>
        <xsl:template match="author">
            <h1><xsl:apply-templates  /></h1>
        </xsl:template>
        <xsl:template match="f">
            <xsl:value-of select="."  />
        </xsl:template>
         
        <xsl:template match="*" />
        <xsl:template match="*//f">
            <xsl:apply-templates />
        </xsl:template>
    </xsl:stylesheet>
 
 
