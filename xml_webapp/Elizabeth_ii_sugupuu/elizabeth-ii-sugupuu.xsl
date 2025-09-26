<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output encoding="UTF-8" method="html" indent="yes"/>

	<xsl:param name="otsitavSymbol" select="''" />
	<xsl:param name="otsitavPikkus" select="''" />

	<xsl:template match="/">
		<h2>Kõik nimed ja sünniaastad</h2>
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="eesnimi" /> -
					<xsl:value-of select="@synd" />
				</li>
			</xsl:for-each>
		</ul>
		<h2>Nimed, kellel on vähemalt kaks last</h2>
		<ul>
			<xsl:for-each select="//inimene">
					<xsl:if test="count(lapsed/inimene) &gt; 1">
						<li>
							<xsl:value-of select="eesnimi" />
						</li>
					</xsl:if>
			</xsl:for-each>
		</ul>
		<h2>Sugupuus leiduvad andmed tabelina </h2>
		<table border="1" cellpadding="4" cellspacing="0">
			<thead>
				<tr>
					<th>Eesnimi</th>
					<th>Perenimi</th>
					<th>Sünniaasta</th>
					<th>Vanema nimi</th>
					<th>Vanavanema nimi</th>
					<th>Vanus (Inimestel, kellel pole järglasi)</th>
					<th>Kui vana oli vanem kui sündis</th>
				</tr>
			</thead>
			<xsl:for-each select="//inimene">
				<tr>
					<xsl:if test="string-length(eesnimi) &lt; 7">
						<xsl:attribute name="style">
							background-color:green
						</xsl:attribute>
					</xsl:if>
					<td>
						<xsl:value-of select="eesnimi" />
					</td>
					<td>
						<xsl:value-of select="perenimi" />
					</td>
					<td>
						<xsl:value-of select="@synd" />
					</td>
					<td>
						<xsl:value-of select="../../eesnimi" />
					</td>
					<td>
						<xsl:value-of select="../../../../eesnimi" />
					</td>
					<td>
						<xsl:if test="count(lapsed/inimene) &lt; 1">
								<xsl:value-of select="2025 - @synd" />
						</xsl:if>
					</td>
					<td>
						<xsl:value-of select="@synd - ../../@synd" />
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<h2>Nime otsimine teatud sümbolite ja pikkuse järgi</h2>

		<!-- Kuva tulemuste tabel ainult siis, kui otsing on tehtud -->
		<xsl:if test="$otsitavSymbol != '' or $otsitavPikkus != ''">
			<h3>Otsingu tulemused</h3>
			<table border="1" cellpadding="4" cellspacing="0">
				<thead>
					<tr>
						<th>Eesnimi</th>
						<th>Perenimi</th>
						<th>Sünniaasta</th>
					</tr>
				</thead>
				<tbody>
					<!-- Filtreeri kõik 'inimene' elemendid vastavalt parameetritele -->
					<xsl:for-each select="//inimene[
                (contains(eesnimi, $otsitavSymbol) or $otsitavSymbol = '') and
                (string-length(eesnimi) = number($otsitavPikkus) or $otsitavPikkus = '')
            ]">
						<tr>
							<td>
								<xsl:value-of select="eesnimi" />
							</td>
							<td>
								<xsl:value-of select="perenimi" />
							</td>
							<td>
								<xsl:value-of select="@synd" />
							</td>
						</tr>
					</xsl:for-each>
				</tbody>
			</table>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>