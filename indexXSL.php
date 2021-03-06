<?php
    include_once('Models/settings.php');
?>

<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

    <xsl:template match="xtv">
    <html>
        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta http-equiv="X-UA-Compatible" content="ie=edge" />
            <link rel="stylesheet" href="CSS/main.css" />
            <link rel="stylesheet" href="CSS/input.css" />
            <link rel="stylesheet" href="CSS/buttons.css" />
            <link rel="stylesheet" href="CSS/table.css" />
            <link rel="stylesheet" href="CSS/search.css" />
            <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;display=swap" rel="stylesheet" />
            <script
                src="https://code.jquery.com/jquery-3.4.1.js"
                integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
                crossorigin="anonymous"></script>
            <title>XTV</title>
        </head>
        <body>
            <div class="timeline-wrapper">
                <div class="timeline-axis">
                </div>
                <div class="timeline-container">
                    <div class="control-bar">
                        <div class="input-container broadcast-search-container">
                            <img src="Assets/searchIcon.svg" alt=""/>
                            <input id="search" name="search" type="text" placeholder="<?= $setting->language == 'SE' ? 'Sök' : 'Search'?>"/>
                        </div>
                        <div class="select-container">
                            <a 
                                href="./Models/settings.php?settingType=language&amp;settingValue=SE" 
                                class="select-option <?= $setting->language == 'SE' ? 'option-selected' :  ''?>">
                                SE
                            </a>
                            <a 
                                href="./Models/settings.php?settingType=language&amp;settingValue=EN" 
                                class="select-option <?= $setting->language == 'EN' ? 'option-selected' :  ''?>">
                                EN
                            </a>
                        </div>
                        <a href="Models/RSS/xtvRSS.php" class="btn btn-icon control-bar-btn">
                            <img src="Assets/rss.svg" alt=""/>
                        </a>
                        <a href="https://twitter.com/xtvupdates" class="btn btn-icon control-bar-btn">
                            <img src="Assets/twitter.svg" alt=""/>
                        </a>
                        <a href="login.php" class="btn btn-icon control-bar-btn">
                            <img src="Assets/cog.svg" alt=""/>
                        </a>
                    </div>
                    <div class="card search-result"></div>
                    <div class="timeline-colum-container">
                        <xsl:apply-templates/>
                    </div>
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
                    <span><?= $setting->language == 'SE' ? 'Avsnitt' : 'Episode'?> <b class="episode-num"></b> | <?= $setting->language == 'SE' ? 'Säsong' : 'Season'?> <b class="episode-season-num"></b></span>
                </div>

                <div class="detailed-info__part">
                    <h2><?= $setting->language == 'SE' ? 'Tider' : 'Times'?></h2>
                    <p>
                        <span class="episode-time-start"></span><br/>
                        <span class="episode-time-duration"></span> min
                    </p>
                </div>
                <div class="detailed-info__part">
                    <h2><?= $setting->language == 'SE' ? 'Beskrivning' : 'Description'?></h2>
                    <p class="episode-description">
                    </p>
                </div>
                <div class="detailed-info__part">
                    <h2><?= $setting->language == 'SE' ? 'Övrigt' : 'Other'?></h2>
                    <table class="detailed-info__table table-no-border">
                        <tr>
                            <td class="episode-speak-lang"></td>
                            <td class="episode-live"></td>
                            <td class="episode-reprise"></td>
                            <td class="episode-subtitles"></td>
                            <td class="episode-outsideSE"></td>
                        </tr>
                    </table>
                </div>
            </div>
            <script>
                var broadcastIDFromURL = null;
                <?php 
                    $broadcastIDFromURL = $_GET['bid'];
                    if($broadcastIDFromURL != null) {
                        ?>
                            broadcastIDFromURL = '<?= $broadcastIDFromURL ?>';
                        <?php
                    }
                ?>
            </script>
            <script src="JS/detailed_info.js"></script>
            <script src="JS/search.js"></script>
        </body>
    </html>
    </xsl:template>

    <xsl:template match="channels/channel">
        <div class="timeline__channel {@id}">
            <div class="channel-title card">
                <img src="Assets/{@name}.svg" alt=""/>
            </div>
            <div class="timeline-broadcasts">
                <xsl:apply-templates match="broadcasts/broadcast"/>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="broadcasts/broadcast">
        <xsl:variable name="episodeID" select="@episodeID"/>
        <xsl:variable name="episodeData" select="//episode[@id=$episodeID]"/>
        <xsl:variable name="programData" select="$episodeData/../.."/>
        <xsl:variable name="broadcastHeight" select="3 * @duration"/>
        <xsl:variable name="margintop" select="3 * number(timeBetweenEarliestBroadcast)"/>
        
        <xsl:variable name="margin">
            <xsl:choose>
                <xsl:when test="position() &lt; 4">
                    <xsl:value-of select="$broadcastHeight"/>
                </xsl:when>
                <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <div class="broadcast-wrapper" style="height: {$broadcastHeight}px; top: {$margintop}px" >
            <div 
                id="{@id}" 
                class="broadcast-container xtv1-color"
                data-programname="{$programData/@name<?= $setting->language ?>}"
                data-subname="{$programData/subname[@lang='<?= $setting->language ?>']}"
                data-description="{$episodeData/description[@lang='<?= $setting->language ?>']}"
                data-season="{$episodeData/@season}"
                data-epnumber="{$episodeData/@epNumber}"
                data-prodyear="{$episodeData/@prodYear}"
                data-start="{start}"
                data-duration="{@duration}"
                data-language="{$episodeData/@language}"
                data-subtitles="{$episodeData/@subtitles}"
                data-live="{@live}"
                data-worldwide="{@outsideSE}"
                data-reprise="{@reprise}">
                <div class="broadcast-info">
                    <span class="broadcast-time">
                        <xsl:value-of select="substring(start, 12, 5)"/>
                    </span>
                    <h2 class="broadcast-title">
                        <xsl:value-of select="$programData/@name<?= $setting->language ?>"/>
                    </h2>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="programs">
    </xsl:template>


</xsl:stylesheet>