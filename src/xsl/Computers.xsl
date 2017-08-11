<?xml version="1.0" encoding="UTF-8"?>
<!-- XSL for computers -->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:cat="http://technocopia.byethost31.com/Catalogue">
    <xsl:template match="cat:cpu">
        <tr>
            <td>CPU</td>
            <td>
                <xsl:value-of select="."/>
                <br/>
                <xsl:if test="@maxFrequency">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="@maxFrequency"/>
                    <xsl:text> GHz)</xsl:text>
                </xsl:if>
                <xsl:text> (cores: </xsl:text>
                <xsl:value-of select="@cores"/>
                <xsl:text>)</xsl:text>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:ram">
        <tr>
            <td>RAM</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:text> GB</xsl:text>
                <xsl:if test="@type">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="@type"/>
                    <xsl:text>)</xsl:text>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:hdd">
        <tr>
            <td>HDD</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:text> GB</xsl:text>
                <xsl:if test="@type">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="@type"/>
                    <xsl:text>)</xsl:text>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:video">
        <tr>
            <td>Graphics</td>
            <td>
                <xsl:value-of select="."/>
                <xsl:if test="@dedicatedMemory">
                    <br/>
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="@dedicatedMemory"/>
                    <xsl:text> GB dedicated memory)</xsl:text>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="cat:os">
        <tr>
            <td>OS</td>
            <td>
                <xsl:value-of select="."/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
