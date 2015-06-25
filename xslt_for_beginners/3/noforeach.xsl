<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="authors">
    <ul>
        <xsl:apply-templates select="author"/>
    </ul>
</xsl:template>
<xsl:template match="author">
    <li>
       
           <xsl:value-of select="fio/f"/>
        
    </li>
</xsl:template> 
 
</xsl:stylesheet>
