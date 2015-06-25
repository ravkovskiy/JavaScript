<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:import href="lib.xsl"/>
    <xsl:template match="authors">
        <html>
            <xsl:call-template name="head" />
            <body>
                <xsl:call-template name="header" />
                <table>
                    <xsl:for-each select="author">
                        <tr>
                            <td><xsl:value-of select="born"/></td>
                            <td><xsl:value-of select="fio/f"/></td>
                        </tr>
                    </xsl:for-each>  
                </table>
                <xsl:call-template name="footer" />
            </body>
        </html>
    </xsl:template>
    
   
    
</xsl:stylesheet>
