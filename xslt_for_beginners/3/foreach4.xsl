<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="authors">
        <html>
            <body>

            <table>
                <xsl:for-each select="rec">
                    <table>
                        <xsl:for-each select="rec">
                            <tr>
                                <td><xsl:value-of select="position()"/></td>
                                <td><xsl:value-of select="@born"/></td>
                                <td><a href="/author/{@id}"><xsl:value-of select="."/></a></td>
                                
                            </tr>
                        </xsl:for-each>   
                    </table>
                </xsl:for-each>    
            </table>
            </body>
        </html>
    
    </xsl:template>
    
</xsl:stylesheet>
