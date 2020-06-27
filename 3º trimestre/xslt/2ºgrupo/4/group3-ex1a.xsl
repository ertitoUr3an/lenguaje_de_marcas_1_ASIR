<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/catalogo">
		<html>
			<ul>
				<xsl:apply-templates select="artistas/artista"/>
			</ul>
		</html>
	</xsl:template>
	<xsl:template match="artista">
		<li>
			<xsl:value-of select="nombre"/>
		</li>
	</xsl:template>
</xsl:stylesheet>