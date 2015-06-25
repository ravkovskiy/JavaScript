<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="authors">
        <html>
            <body>
                <table>
                    <xsl:for-each select="author">
                        <tr class="color{position() mod 2}">
                            <td><xsl:value-of select="position()"/></td>
                            <td><xsl:value-of select="born"/></td>
                            <td><a href="/author/{@id}"><xsl:value-of select="fio/f"/></a></td>
                            
                        </tr>
                    </xsl:for-each>   
             </table> 
            </body>
        </html>
    
    </xsl:template>
    
</xsl:stylesheet>
