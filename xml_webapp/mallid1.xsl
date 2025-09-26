<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="UTF-8" method="html" indent="yes"/>
	<xsl:template name="tärnirida">
		<xsl:text>**************</xsl:text>
	</xsl:template>
	<xsl:template name="punaneTekst">
		<xsl:param name="tekst" />
		<span style="color:red">
			<xsl:value-of select="$tekst"/>
		</span>
	</xsl:template>
	<xsl:template name="värvitudTekst">
		<xsl:param name="tekst" />
		<xsl:param name="värv" />
		<span>
			<xsl:attribute name="style">
				color:<xsl:value-of select="$värv"/>
			</xsl:attribute>
			<xsl:value-of select="$tekst"/>
		</span>
	</xsl:template>
	<xsl:template match="/">
		<xsl:call-template name="tärnirida" />
		<br></br>
		<xsl:call-template name="punaneTekst">
			<xsl:with-param name="tekst" select="'Punane tekst'" />
		</xsl:call-template>
		<br></br>
		<xsl:call-template name="värvitudTekst">
			<xsl:with-param name="tekst" select="'Roheline tekst'" />
			<xsl:with-param name="värv" select="'green'" />
		</xsl:call-template>
	</xsl:template>
</xsl:stylesheet>