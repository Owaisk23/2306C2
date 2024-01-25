<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/mobileShop">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
</head>
<body>
    <table border="1">
        <tr bgcolor="lightyellow">
            <th>ID</th>
            <th>Name</th>
            <th>Brand</th>
            <th>Price</th>
        </tr>
        <xsl:for-each select="mobile">
            <xsl:if test="price &gt; 3000">
            <tr>
                <td><xsl:value-of select="id"></xsl:value-of></td>
                <td><xsl:value-of select="name"></xsl:value-of></td>
                <td><xsl:value-of select="brand"></xsl:value-of></td>
                <td><xsl:value-of select="price"></xsl:value-of></td>
            </tr>
            </xsl:if>
        </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
