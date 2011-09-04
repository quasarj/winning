<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                   version="1.0"
          xmlns:str="http://exslt.org/strings"
          extension-element-prefixes="str">
<xsl:import href="str.xsl" />

<xsl:template match="/">

truncate `item`;

<xsl:for-each select="page/realm/item">
insert into `item` values
(
<xsl:value-of select="@id" />,
"<xsl:call-template name="str:replace">
	<xsl:with-param name="string" select="@name" />
	<xsl:with-param name="search" select="'&quot;'" />
	<xsl:with-param name="replace" select="'\&quot;'" />
</xsl:call-template>"
);

</xsl:for-each>
insert into importtime values (null, now());
</xsl:template> 
</xsl:stylesheet>
