<?php
    header('Content-type: text/xml');

    @include_once 'XTVData.php';
    $xtvData = new XTVData();

    $episodes = $xtvData->getAllEpisodes();
    $broadcasts = $xtvData->getAllBroadcasts();
?>
<xtv>
    <broadcasts>
        <?php
            foreach ($broadcasts as $broadcast) {
                ?>
                    <broadcast>
                        <id><?= $broadcast->id ?></id>
                    </broadcast>
                <?php
            }
        ?>
    </broadcasts>
</xtv>
<test>
</test>