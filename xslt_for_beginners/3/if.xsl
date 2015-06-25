<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="author">
        <html>
            <body>
                <h1>
                    <xsl:if test="rip >= 1917">
                        Советский поэт
                    </xsl:if>
                    <xsl:if test="rip &lt;= 1917">
                        Несоветский поэт
                    </xsl:if>
                    <xsl:value-of select="fio/f"/>
                </h1>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
