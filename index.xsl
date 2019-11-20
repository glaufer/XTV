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
            <link rel="stylesheet" href="CSS/buttons.css" />
            <link rel="stylesheet" href="CSS/table.css" />
            <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;display=swap" rel="stylesheet" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

            <div class="detailed-info-container">
                <div id="close-info-container-button" class="icon-btn">
                    <img src="Assets/closeIcon.svg" alt="Close icon"/>
                </div>
                <br/>

                <div class="detailed-info__part">
                    <h1 class="program-name"></h1>
                    <h3 class="program-sub-name"></h3>
                    <span>Episode <b class="episode-num"></b> | Säsong <b class="episode-season-num"></b></span>
                </div>

                <div class="detailed-info__part">
                    <h2>Tider</h2>
                    <p>
                        <span class="episode-time-start"></span><br/>
                        <span class="episode-time-duration"></span> min
                    </p>
                </div>
                <div class="detailed-info__part">
                    <h2>Beskrivning</h2>
                    <p class="episode-description">
                    </p>
                </div>
                <div class="detailed-info__part">
                    <h2>Övrigt</h2>
                    <table class="detailed-info__table">
                        <tr>
                            <th>Språk</th>
                            <th>Undertexter</th>
                        </tr>
                        <tr>
                            <td class="episode-speak-lang"></td>
                            <td class="episode-subtitles"></td>
                        </tr>
                    </table>
                </div>
            </div>

            <script src="JS/detailed_info.js"></script>
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
        <xsl:variable name="programData" select="$episodeData/../.."/>
        <div 
            style="height: {3 * $episodeData/@duration}px" 
            id="{@id}" 
            class="broadcast-container xtv1-color"
            data-programname="{$programData/@nameSE}"
            data-subname="{$programData/subname[@lang='SE']}"
            data-description="{$episodeData/description[@lang='SE']}"
            data-season="{$episodeData/@season}"
            data-epnumber="{$episodeData/@epNumber}"
            data-prodyear="{$episodeData/@prodYear}"
            data-start="{start}"
            data-duration="{$episodeData/@duration}"
            data-language="{$episodeData/@language}"
            data-subtitles="{$episodeData/@subtitles}">
            <span class="broadcast-time">
                <xsl:value-of select="substring(start, 12, 5)"/>
            </span>
            <h2 class="broadcast-title">
                <xsl:value-of select="$programData/@nameSE"/>
            </h2>
        </div>
    </xsl:template>

    <xsl:template match="programs">
    </xsl:template>


</xsl:stylesheet>