<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:decimal-format name="d" decimal-separator=',' />
    <xsl:variable name="target" select="scores/cricketbbbfeed/currentscores/target"/>
    <xsl:variable name="maxovers" select="scores/cricketbbbfeed/currentscores/maxovers"/>
    <xsl:variable name="total" select="scores/inningsinfo/match/innings/total"/>
    <xsl:template match="/">
        <h1>
            <xsl:value-of select="format-number($target div $maxovers, '###,00', 'd')"/>
        </h1>
        <div>
            <xsl:value-of select="substring-before(substring-after($total,'('),' ')"/> 
        </div>
    </xsl:template>
</xsl:stylesheet>