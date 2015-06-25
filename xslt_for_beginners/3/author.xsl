<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 
 
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
            doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" method="html"
            encoding="utf-8" indent="yes" 
            xml:space="default"
    />
     
    <xsl:template match="author">
        
        <html>
            <head>
                <title>Поэтический портал</title>
                <meta  name="generator"  content="XSLT" />
                <meta name="Yandex" content="Люби меня как я тебя!" />
                <link rel="stylesheet" href="D:/WEB/aps/zpsy/js/RTE/screen.css" type="text/css" />
            </head>
            
            <body>
    
                            <h1>
                                <xsl:choose>
                                    <xsl:when test="born > 1991">Постсоветский поэт</xsl:when>
                                    <xsl:when test="rip &lt; 1917 ">Несоветский поэт</xsl:when>
                                    <xsl:when test="(rip >= 1917) and (rip &lt; 1991)">Советский поэт</xsl:when>
                                    <xsl:otherwise>Просто поэт</xsl:otherwise>
                                </xsl:choose>                   
                                <span><xsl:value-of select="fio/f"/></span>
                            </h1>
 
                <div id="footer">
                    (c) Исаак Тынгылчав
                    <img src="http://rambler/блаблабла"  alt="Rambler Top100" />
                </div>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
