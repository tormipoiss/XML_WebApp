<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" indent="yes"/>
	<xsl:template match="/">
		<p>
			Kui registrinumbri viimane number lõppeb ühe või kahega trükib
			rasvaselt.
		</p>
		<ol>
			<xsl:for-each select="autod/auto">
				<li>
					<xsl:choose>
						<xsl:when test="substring(registrinumber, string-length(registrinumber), 1) = '1' or 
                            substring(registrinumber, string-length(registrinumber), 1) = '2'">
							<strong>
								<xsl:value-of select="omanik"/> - 
								<xsl:value-of select="registrinumber"/>
							</strong>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="omanik"/> - 
							<xsl:value-of select="registrinumber"/>
						</xsl:otherwise>
					</xsl:choose>
				</li>
			</xsl:for-each>
		</ol>
	</xsl:template>
</xsl:stylesheet>