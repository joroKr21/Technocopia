<?xml version="1.0" encoding="UTF-8"?>
<!-- Template XSL -->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:cat="http://technocopia.byethost31.com/Catalogue">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <title>Technocopia</title>
                <meta name="description" content="Abundance through technology"/>
                <!-- Needs extension -->
                <meta name="keywords" content="tech, technology, computer, pc, notebook, laptop,
                    desktop, tablet, camera, tv, television"/>
                <meta name="author" content="Georgi Krastev"/>
                <link rel="shortcut icon" href="../img/lightning.ico"/>
                <link rel="stylesheet" type="text/css" href="../css/main.css"/>
                <link rel="stylesheet" type="text/css" href="../css/jquery.akordeon.css"/>
                <link rel="stylesheet" type="text/css" href="../css/datagrid.css"/>
            </head>
            <body>
                <nav id="menu">
                    <a href="TVs.xml">TVs</a>
                    <a href="Cameras.xml">Cameras</a>
                    <a href="Notebooks.xml">Notebooks</a>
                    <a href="Tablets.xml">Tablets</a>
                </nav>
                <!-- Big wrapper to center the site -->
                <div id="big-wrap">
                    <header>
                        <a id="logo" href="../index.html">Technocopia</a>
                        <span id="motto">&quot;Abundance of Technology&quot;</span>
                    </header>
                    <xsl:apply-templates/>
                    <footer>
                        Created by Georgi Krastev<br/>
                        <a href="Technocopia.pdf" target="_blank">Documentation</a>
                    </footer>
                </div>
            </body>
            <script type="text/javascript" src="../js/jquery.min.js"></script>
            <script type="text/javascript" src="../js/jquery.akordeon.js"></script>
            <script type="text/javascript" src="../js/catalogue.js"></script>
        </html>
    </xsl:template>
    <xsl:template match="cat:manufacturerList">
        <section id="manufacturers">
            <xsl:for-each select="cat:manufacturer">
                <div class="akordeon-item">
                    <div class="akordeon-item-head">
                        <div class="akordeon-item-head-container">
                            <div class="akordeon-heading">
                                <xsl:element name="h2">
                                    <xsl:attribute name="id">
                                        <xsl:value-of select="@id"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="cat:name"/>
                                </xsl:element>
                            </div>
                        </div>
                    </div>
                    <div class="akordeon-item-body">
                        <div class="akordeon-item-content">
                            <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="cat:website/@href"/>
                                </xsl:attribute>
                                <xsl:attribute name="target">_blank</xsl:attribute>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="cat:logo/@src"/>
                                    </xsl:attribute>
                                </xsl:element>
                            </xsl:element>
                        </div>
                    </div>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>
    <xsl:template name="deviceList">
        <section id="products">
            <xsl:for-each select="child::*">
                <xsl:element name="article">
                    <xsl:attribute name="id">
                        <xsl:value-of select="@barcode"/>
                    </xsl:attribute>
                    <div class="pic">
                        <span>
                            <xsl:text>#</xsl:text>
                            <xsl:value-of select="@barcode"/>
                        </span>
                        <br/>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="cat:img/@src"/>
                            </xsl:attribute>
                        </xsl:element>
                    </div>
                    <div class="description">
                        <h2>
                            <xsl:value-of select="cat:model"/>
                        </h2>
                        <p>
                            <xsl:value-of select="cat:description"/>
                        </p>
                        <div class="datagrid">
                            <table>
                                <tbody>
                                    <xsl:apply-templates/>
                                </tbody>
                            </table>
                        </div>
                        <div class="price">
                            <em>
                                <xsl:text>Price: </xsl:text>
                                <xsl:value-of select="cat:price"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="cat:price/@currency"/>
                            </em>
                            <xsl:if test="cat:warranty">
                                <br/>
                                <span>
                                    <xsl:text>Warranty: </xsl:text>
                                    <xsl:value-of select="cat:warranty"/>
                                    <xsl:text> months</xsl:text>
                                </span>
                            </xsl:if>
                        </div>
                    </div>
                </xsl:element>
            </xsl:for-each>
        </section>
    </xsl:template>
    <xsl:template match="cat:img"/>
    <xsl:template match="cat:model"/>
    <xsl:template match="cat:description"/>
    <xsl:template match="cat:price"/>
    <xsl:template match="cat:warranty"/>
    <xsl:template match="cat:manufacturer">
        <tr>
            <td>Manufacturer</td>
            <td>
                <xsl:value-of select="."/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
