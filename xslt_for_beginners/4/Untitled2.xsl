<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:template match="authors">
     <xsl:apply-templates select="author[ fio/o = 'Сергеевич']"/>
 </xsl:template>
 <xsl:template match="author">
     <xsl:value-of select="fio/f"/>
     <xsl:text>
         
     </xsl:text>
 </xsl:template>
</xsl:stylesheet>
