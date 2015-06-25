<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="author"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="author">
        <h1><xsl:value-of select="fio/f"/></h1>
    </xsl:template>
    
</xsl:stylesheet>