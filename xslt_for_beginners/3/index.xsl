<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="authors">
        <html>
 
 <xsl:call-template name="head" />
            
            <body>
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
    
    <xsl:template name="head">
        <head>
            <title>Поэтический портал</title>
            <meta  name="generator"  content="XSLT" />
            <meta name="Yandex" content="Люби меня как я тебя!" />
            <link rel="stylesheet" href="D:/WEB/aps/zpsy/js/RTE/screen.css" type="text/css" />
        </head>        
    </xsl:template>
    
    <xsl:template name="footer">
        <div id="footer">
            (c) Исаак Тынгылчав
            <img src="http://rambler/блаблабла"  alt="Rambler Top100" />
        </div>
    </xsl:template>    
    
</xsl:stylesheet>
