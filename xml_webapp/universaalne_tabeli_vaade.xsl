<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		
		<xsl:variable name="tabeliNimi" select="name(*)"/>
		<h1>
			<xsl:value-of select="$tabeliNimi"/>
		</h1>
		<ul>
			<xsl:for-each select="*/*">
				<li>
					<xsl:variable name="sqlPäring" select="."/>
					INSERT INTO <xsl:value-of select="$tabeliNimi"/> (<xsl:for-each select="*">
					<xsl:value-of select="name(.)" />
					<xsl:if test="position() != last()">, </xsl:if>
					</xsl:for-each>)
					VALUES (<xsl:for-each select="*">'<xsl:value-of select="."/>'<xsl:if test="position() != last()">, </xsl:if>
				</xsl:for-each>);
				</li>
			</xsl:for-each>
		</ul>

	</xsl:template>
</xsl:stylesheet>