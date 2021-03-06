<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/bib">
		<html>
			<table>
				<tr>
					<th>Título del libro</th>
					<th>Autores</th>
					<th>Editores</th>
				</tr>
				<xsl:apply-templates select="libro">
					<xsl:sort select="titulo"/>
				</xsl:apply-templates>
			</table>
		</html>
	</xsl:template>
	<xsl:template match="libro">
		<tr>
			<xsl:choose>
				<xsl:when test="precio&gt;100">
					<td style="color: red"><xsl:value-of select="titulo"/> (Caro)</td>
				</xsl:when>
				<xsl:otherwise>
					<td><xsl:value-of select="titulo"/></td>
				</xsl:otherwise>
			</xsl:choose>
			<td><xsl:apply-templates select="autor"/></td>
			<td><xsl:apply-templates select="editor"/></td>
		</tr>
	</xsl:template>
	<xsl:template match="autor">
		<xsl:value-of select="nombre"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="apellido"/>
		<xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="editor">
		<xsl:value-of select="nombre"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="apellido"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="afiliacion"/>
		<xsl:text> </xsl:text>
	</xsl:template>
</xsl:stylesheet>