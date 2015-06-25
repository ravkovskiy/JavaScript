
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

   <xsl:template match="/">
      <html>
         <body>
             <h1>
                 <xsl:value-of select='SourceDoc/HTML/BODY/TABLE
                     /TR[2]/TD/TABLE/TR/TD/TABLE/TR/TD[3]/TABLE
                      /TR[6]/TD[2]/*[1]'/>
             </h1>
               <xsl:for-each select="SourceDoc/HTML/BODY/TABLE
                  /TR[2]/TD/TABLE/TR/TD/TABLE/TR/TD[3]/TABLE/TR
                  ">
                 <xsl:if test="(position()-2) mod 4 = 0 
                 and position() &lt; 43 and position()>2">
                  <flight>
                      <depart>
                          <xsl:value-of select="position()"/>
                          <xsl:copy-of select=
                             "TD[2]/text()[6]"/>
                        </depart>
                      <arrive>
                          <xsl:copy-of select=
                              "TD[2]/text()[9]"/>
                      </arrive>
                    </flight> 
                    <totalTime>
                        <xsl:copy-of select=
                            "TD[2]/text()[16]"/>
                    </totalTime>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
