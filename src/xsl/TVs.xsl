<?xml version="1.0" encoding="UTF-8"?>
<!-- XSL for TVs -->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:cat="http://technocopia.byethost31.com/Catalogue">
    <xsl:include href="template.xsl"/>
    <xsl:template match="cat:tvCatalogue">
        <h1>Television Sets</h1>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="cat:tvList">
        <xsl:call-template name="deviceList"/>
    </xsl:template>
    <xsl:template match="cat:type">
        <tr>
            <td>Type</td>
            <td>
                <xsl:value-of select="."/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:resolution">
        <tr>
            <td>Resolution</td>
            <td>
                <xsl:value-of select="cat:width"/>
                <xsl:text> x </xsl:text>
                <xsl:value-of select="cat:height"/>
                <xsl:if test="@threeD">
                    <xsl:text> (3D)</xsl:text>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:display">
        <tr>
            <td>Display size</td>
            <td>
                <xsl:value-of select="cat:in"/>
                <xsl:text>&quot; (</xsl:text>
                <xsl:if test="cat:cm">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="cat:cm"/>
                    <xsl:text> cm)</xsl:text>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:dimensions">
        <tr>
            <td>Dimensions (HxWxL) [cm]</td>
            <td>
                <xsl:value-of select="cat:height"/>
                <xsl:text> x </xsl:text>
                <xsl:value-of select="cat:width"/>
                <xsl:text> x </xsl:text>
                <xsl:value-of select="cat:length"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
