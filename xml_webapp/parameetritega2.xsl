<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" />
	<xsl:template match="/">
		<xsl:param name="tervitus">Tere, siin on XSL leht</xsl:param>
		<xsl:param name="praeguneAasta">2025</xsl:param>
		<xsl:param name="vähimSünniaasta"></xsl:param>
		<xsl:param name="suurimSünniaasta"></xsl:param><br />
		<xsl:value-of select="$tervitus"/><br />
		<xsl:value-of select="$vähimSünniaasta"/><br />
		<xsl:value-of select="$suurimSünniaasta"/><br />
		Iga inimese vanus 2025 aasta lõpuks:
		<ul>
			<xsl:for-each select="*/*">
				<li>
					<xsl:for-each select="*[position() &lt;= 1]">
						<xsl:value-of select="."/>
						<xsl:text> - </xsl:text>
					</xsl:for-each>
					<xsl:for-each select="*[position() = 3]">
						<xsl:value-of select="$praeguneAasta - ."/>
						<xsl:text> </xsl:text>
					</xsl:for-each>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>