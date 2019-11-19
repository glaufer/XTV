<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

    <xsl:template match="xtv">
    <html>
        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta http-equiv="X-UA-Compatible" content="ie=edge" />
            <link rel="stylesheet" href="CSS/main.css" />
            <link rel="stylesheet" href="CSS/table.css" />
            <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;display=swap" rel="stylesheet" />
            <title>XTV</title>
        </head>
        <body>
            <div class="timeline-wrapper">
                <div class="timeline-axis">
                </div>
                <div class="timeline-container">
                    <xsl:apply-templates/>
                </div>
            </div>
        </body>
    </html>
    </xsl:template>

    <xsl:template match="channels/channel">
        <div class="timeline__channel {@id}">
            <div class="channel-title">
                <xsl:value-of select="@name"/>
            </div>
            <xsl:apply-templates match="broadcasts/broadcast"/>
        </div>
    </xsl:template>

    <xsl:template match="broadcasts/broadcast">
        <xsl:variable name="episodeID" select="@episodeID"/>
        <xsl:variable name="episodeData" select="//episode[@id=$episodeID]"/>
        <div style="height: {3 * $episodeData/@duration}px" id="{@id}" class="broadcast-container xtv1-color">
            <span class="broadcast-time">
                <xsl:value-of select="substring(start, 12, 5)"/>
            </span>
            <h2 class="broadcast-title">
                <xsl:value-of select="$episodeData/../../@nameSE"/>
            </h2>
        </div>
    </xsl:template>

    <xsl:template match="programs">
    </xsl:template>


</xsl:stylesheet>