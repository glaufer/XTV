<?php
    @include_once "XTVData.php";
    $xtvData = new XTVData();
    $searchString = $_GET['searchString'];
    $searchResult = $xtvData->getBroadcastFromSearch($searchString);

    if(count($searchResult) == 0) {
        exit;
    }

    ob_start();
    ?>
        <table class="detailed-info__table detailed-info__table--interactive">
            <tr>
                <th>Namn</th>
                <th>Säsong</th>
                <th>Episode</th>
                <th>Start</th>
            </tr>
            <?php
                foreach ($searchResult as $data) {
                    ?>
                        <tr class="search-result-row" data-id="<?= $data->id ?>">
                            <td><?= $data->name?></td>
                            <td><?= $data->season?></td>
                            <td><?= $data->epNumber?></td>
                            <td><?= $data->start?></td>
                        </tr>
                    <?php
                }
            ?>

        </table>
    <?php

    echo ob_get_clean();