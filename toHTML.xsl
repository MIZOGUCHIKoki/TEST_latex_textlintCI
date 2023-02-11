<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="html" encoding="UTF-8"/>

<!-- root -->
<xsl:template match="/">
<html>
	<body>
		<xsl:apply-templates />
	</body>
</html>
</xsl:template>

<!-- checkstyle -->
<xsl:template match="checkstyle">
	<xsl:apply-templates />
</xsl:template>

<!-- file -->
<xsl:template match="file">
 	<h1><xsl:value-of select="@name"/></h1>
	<table>
		<thead>
			<tr>
				<th><small>Line</small></th>
				<th><small>Column</small></th>
				<th><small>Severity</small></th>
				<th><small>Message</small></th>
				<th><small>Source</small></th>
			</tr>
		</thead>
		<tbody>
				<xsl:apply-templates />
		</tbody>
	</table>
</xsl:template>

<xsl:template match="error">
		<tr><td width="30"><xsl:value-of select="@line"/></td>
		<td width="30"><xsl:value-of select="@column"/></td>
		<td width="30"><xsl:value-of select="@severity"/></td>
		<td width="100"><small><xsl:value-of select="@message"/></small></td>
		<td width="80"><small><xsl:value-of select="@source"/></small></td></tr>
</xsl:template>
</xsl:stylesheet>
