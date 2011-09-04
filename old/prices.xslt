<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

truncate `price`;

<xsl:for-each select="page/realm/item">
insert into `price` values 
(
<xsl:value-of select="@id"/>,
<xsl:value-of select="market"/>,
<xsl:choose>
  <xsl:when test="marketaverage">
    <xsl:value-of select="marketaverage" />
  </xsl:when>
  <xsl:otherwise>null</xsl:otherwise>
</xsl:choose>
);
</xsl:for-each>


</xsl:template>
</xsl:stylesheet>

