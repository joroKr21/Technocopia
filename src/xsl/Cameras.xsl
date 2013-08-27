<?xml version="1.0" encoding="UTF-8"?>
<!-- XSL for cameras -->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:cat="http://technocopia.byethost31.com/Catalogue">
    <xsl:include href="template.xsl"/>
    <xsl:template match="cat:cameraCatalogue">
        <h1>Cameras</h1>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="cat:cameraList">
        <xsl:call-template name="deviceList"/>
    </xsl:template>
    <xsl:template match="cat:resolution">
        <tr>
            <td>Resolution</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:text> MP</xsl:text>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:opticalZoom">
        <tr>
            <td>Optical zoom</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:text>x</xsl:text>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:digitalZoom">
        <tr>
            <td>Digital zoom</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:text>x</xsl:text>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:display">
        <tr>
            <td>Display size</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:text>&quot;</xsl:text>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:battery">
        <tr>
            <td>Battery type</td>
            <td>
                <xsl:value-of select="."/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:color">
        <tr>
            <td>Color</td>
            <td>
                <xsl:value-of select="."/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
