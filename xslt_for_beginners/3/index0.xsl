<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="authors">
        <html>
            <head>
                <title>Поэтический портал</title>
                <meta  name="generator"  content="XSLT" />
                <meta name="Yandex" content="Люби меня как я тебя!" />
                <link rel="stylesheet" href="D:/WEB/aps/zpsy/js/RTE/screen.css" type="text/css" />
            </head>
            
            <body>
                <div id="header"><img src="logo.jpg" alt="Логотип сайта" /></div>
                <table>
                    <xsl:for-each select="author">
                        <tr>
                            <td><xsl:value-of select="born"/></td>
                            <td><a href="/author/{@id}"><xsl:value-of select="fio/f"/></a></td>
                        </tr>
                    </xsl:for-each>  
                </table>
                <div id="footer">
                    (c) Исаак Тынгылчав
                    <img src="http://rambler/блаблабла"  alt="Rambler Top100" />
                </div>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>