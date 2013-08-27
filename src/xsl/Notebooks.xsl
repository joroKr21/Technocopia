<?xml version="1.0" encoding="UTF-8"?>
<!-- XSL for notebooks -->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:cat="http://technocopia.byethost31.com/Catalogue">
    <xsl:include href="template.xsl"/>
    <xsl:include href="Computers.xsl"/>
    <xsl:template match="cat:notebookCatalogue">
        <h1>Notebooks</h1>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="cat:notebookList">
        <xsl:call-template name="deviceList"/>
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
                <xsl:text>&quot;</xsl:text>
                <xsl:if test="cat:cm">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="cat:cm"/>
                    <xsl:text> cm)</xsl:text>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:weight">
        <tr>
            <td>Weight</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:text> kg</xsl:text>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:battery">
        <tr>
            <td>Battery</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:if test="@duration">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="@duration"/>
                    <xsl:text> h)</xsl:text>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
