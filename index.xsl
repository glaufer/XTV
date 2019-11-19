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
            <!-- <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap" rel="stylesheet" /> -->
            <title>XTV</title>
        </head>
        <body>
            <xsl:apply-templates/>
            <div class="timeline-wrapper">
                <div class="timeline-axis">
                </div>
                <div class="timeline-container">
                    <div class="timeline__channel">
                        <div class="channel-title">
                            XTV 1
                        </div>
                        <div style="height: 250px" class="broadcast-container xtv1-color">
                            <span class="broadcast-time">14:00</span>
                            <h2 class="boradcast-title">Rapport</h2>
                        </div>
                        <div class="broadcast-container xtv1-color">
                            <span class="broadcast-time">14:30</span>
                            <h2 class="boradcast-title">Väder</h2>
                        </div>
                    </div>
                    <div class="timeline__channel">
                        <div class="channel-title">
                            XTV 2
                        </div>
                        <div class="broadcast-container xtv2-color">
                            <span class="broadcast-time">14:00</span>
                            <h2 class="boradcast-title">Rapport</h2>
                        </div>
                        <div style="height: 250px" class="broadcast-container xtv2-color">
                            <span class="broadcast-time">14:30</span>
                            <h2 class="boradcast-title">Väder</h2>
                        </div>
                        <div style="height: 200px" class="broadcast-container xtv2-color">
                            <span class="broadcast-time">14:30</span>
                            <h2 class="boradcast-title">Väder</h2>
                        </div>
                    </div>
                    <div class="timeline__channel">
                        <div class="channel-title">
                            XTV 3
                        </div>
                        <div style="height: 350px" class="broadcast-container xtv3-color">
                            <span class="broadcast-time">14:00</span>
                            <h2 class="boradcast-title">Rapport</h2>
                        </div>
                        <div class="broadcast-container xtv3-color">
                            <span class="broadcast-time">14:30</span>
                            <h2 class="boradcast-title">Väder</h2>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>
    </xsl:template>

    <xsl:template match="programs/program">
        <p>
            <xsl:value-of select="@nameSE"/>
        </p>
    </xsl:template>

    <xsl:template match="broadcasts/broadcast">
        <p>
            <xsl:value-of select="@nameSE"/>
        </p>
    </xsl:template>

</xsl:stylesheet>