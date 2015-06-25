<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:import href="lib.xsl"/>
        <xsl:template match="author">
            <html>
                <xsl:call-template name="head" >
                    <xsl:with-param name="title">
                        <xsl:value-of select="fio/f"/>
                    </xsl:with-param>
                </xsl:call-template>
                <body>
                    <xsl:call-template name="header" />
                    <h1>
                        <xsl:choose>
                            <xsl:when test="born > 1991">Постсоветский  поэт</xsl:when>
                            <xsl:when test="rip &lt; 1917 ">Несоветский поэт</xsl:when>
                            <xsl:when test="(rip >= 1917) and (rip &lt; 1991)">Советский поэт</xsl:when>
                            <xsl:otherwise>Просто поэт</xsl:otherwise>
                        </xsl:choose>                   
                        <span><xsl:value-of select="fio/f"/></span>
                    </h1>
                    <xsl:call-template name="footer" />
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>
