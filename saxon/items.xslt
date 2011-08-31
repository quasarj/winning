<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                   version="2.0">

<xsl:template match="/">

truncate `item`;

<xsl:for-each select="page/realm/item">
insert into `item` values
(
<xsl:value-of select="@id" />,
"<xsl:value-of select="replace(@name, '&quot;', '\\&quot;')" />"
);

</xsl:for-each>
</xsl:template> 
</xsl:stylesheet>
