<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1><xsl:value-of select="author/fio/f"/></h1>
                <h2><xsl:value-of select="author/registry/@country" /></h2>  
                <div>
                    <xsl:value-of select="author/text"/>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
