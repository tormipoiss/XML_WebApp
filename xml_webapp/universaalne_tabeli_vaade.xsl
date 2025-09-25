<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">

		<h1>
			<xsl:value-of select="name(*)" />
		</h1>
		<ul>
			<xsl:for-each select="*/*">
				<li>
					<xsl:variable name="inimene" select="."/>
					INSERT INTO inimesed (eesnimi, perenimi, synd, sugu, mass) VALUES ('<xsl:value-of select="$inimene/eesnimi"/>', '<xsl:value-of select="$inimene/perenimi"/>', '<xsl:value-of select="$inimene/synd"/>', '<xsl:value-of select="$inimene/sugu"/>', '<xsl:value-of select="$inimene/mass"/>');
				</li>
			</xsl:for-each>
		</ul>

	</xsl:template>
</xsl:stylesheet>