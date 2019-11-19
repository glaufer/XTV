<?php
    @include_once 'XTVData.php';
    $xtvData = new XTVData();

    $episodes = $xtvData->getAllEpisodes();
    $broadcasts = $xtvData->getAllBroadcasts();
    $channels = $xtvData->getAllChannels();
    $programs = $xtvData->getAllPrograms();
    $reprises = $xtvData->getAllReprises();
?>
<xtv>
    <channels>
        <?php
            foreach ($channels as $ch) {
                $broadcastinchannel = $xtvData->getChBroadcasts($ch->id);
                ?>
                    <channel id="<?= $ch->id ?>" name="<?= $ch->name ?>">
                        <broadcasts>
                            <?php
                                foreach ($broadcastinchannel as $b) {
                                    ?>
                                        <broadcast id="<?= $b->id ?>" episodeID="<?= $b->episodeID ?>" outsideSE="<?= $b->outsideSE ? "1" : "0" ?>" live="<?= $b->live ? "1" : "0" ?>" reprise="<?= $b->reprise ? "1" : "0" ?>">
                                            <start><?= $b->start ?></start>
                                            <end><?= $b->end ?></end>
                                        </broadcast>
                                    <?php
                                }
                            ?>
                        </broadcasts>
                    </channel>
                <?php
            }
        ?>
    </channels>

    <programs>
    <?php
        foreach ($programs as $p) {
            $episodeinprogram = $xtvData->getPrEpisodes($p->id);
            ?>
            <program id="<?= $p->id ?>" nameSE="<?= $p->nameSE ?>" nameEN="<?= $p->nameEN ?>">
            <subname lang="SE"><?= $p->subnameSE ?></subname>            
            <subname lang="EN"><?= $p->subnameEN ?></subname>
            <description lang="SE"><?= $p->descriptionSE ?></description>
            <description lang="EN"><?= $p->descriptionEN ?></description>
                <episodes>
                    <?php
                        foreach ($episodeinprogram as $e) {
                            ?>
                                <episode id="<?= $e->id ?>" season="<?= $e->season ?>" epNumber="<?= $e->epNumber ?>" prodYear="<?= $e->prodYear ?>" duration="<?= $e->duration ?>" language="<?= $e->language ?>" subtitles="<?= $e->subtitles ? "1" : "0" ?>">
                                <description lang="SE" ><?= $e->descriptionSE ?></description>
                                <description lang="EN" ><?= $e->descriptionEN ?></description>
                                </episode>
                            <?php
                        }
                    ?>            
                </episodes>
            </program>
        <?php
    }
    ?>
    </programs>
    
    <reprises>
    <?php
        foreach ($reprises as $r) {
            $reprisesofbroadcast = $xtvData->getBrReprises($r->originalID);
            ?>
                <reprise origID="<?= $r->originalID ?>">
                    <?php
                        foreach ($reprisesofbroadcast as $rb) {
                            ?>
                                <repRef id="<?= $rb->repriseID ?>"/>
                            <?php
                        }
                        ?>  
                </reprise>          
            <?php
        }
    ?>        
    </reprises>
</xtv>