﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">

		<h1>
			<xsl:value-of select="name(*)" />
		</h1>
		<ul>
			<!--<li>
				<xsl:for-each select="*/*[1]/*">
						<xsl:value-of select="name(.)" />
				</xsl:for-each>
			</li>-->
			<xsl:for-each select="*/*">
				<li>
					<xsl:for-each select="*[position() &lt;= 2]">
						<xsl:value-of select="."/><xsl:text> </xsl:text>
					</xsl:for-each>
				</li>
			</xsl:for-each>
		</ul>

	</xsl:template>
</xsl:stylesheet>