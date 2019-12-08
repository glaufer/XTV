<?php
    include_once 'Models/XTVData.php';
    include_once 'Models/settings.php';
    $xtvData = new XTVData();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="CSS/main.css" />
    <link rel="stylesheet" href="CSS/input.css" />
    <link rel="stylesheet" href="CSS/buttons.css" />
    <link rel="stylesheet" href="CSS/search.css" />
    <link rel="stylesheet" href="CSS/table.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;display=swap" rel="stylesheet" />
    <title>XTV</title>
</head>
<body>
    <div class="main-container card">
        <form method="POST" action="Controllers/broadcastController.php">
            <input type="hidden" value="add" name="action">
            <div class="input-container">
                <span class="input-description">Episode</span>
                <select name="episodeID">
                    <?php
                        foreach ($xtvData->getAllEpisodes() as $episode) {
                            ?>
                                <option value="<?= $episode->id ?>">
                                    <?= $episode->name ?> - 
                                    Season <b><?= $episode->season?></b> -
                                    Episode <b><?= $episode->epNumber?></b>
                                </option>
                            <?php
                        }
                    ?>
                </select>
            </div>
            <div class="input-container">
                <span class="input-description">Channel</span>
                <select name="channelID">
                    <?php
                        foreach ($xtvData->getAllChannels() as $channel) {
                            ?>
                                <option value="<?= $channel->id ?>">
                                    <?= $channel->name ?>
                                </option>
                            <?php
                        }
                    ?>
                </select>
            </div>
            <div class="input-container input-container-multiple">
                <span class="input-description">Start</span>
                <input name="date_start" type="date">
                <input name="time_start" type="time">
            </div>
            <div class="input-container input-container-multiple">
                <span class="input-description">End</span>
                <input name="date_end" type="date">
                <input name="time_end" type="time">
            </div>
            <div class="input-container input-container-checkbox">
                <input name="outsideSE" type="checkbox">
                <span class="input-description">- Outside Sweden</span>
            </div>
            <div class="input-container input-container-checkbox">
                <input name="reprise" type="checkbox">
                <span class="input-description">- Reprise</span>
            </div>
            <div class="input-container input-container-checkbox">
                <input name="live" type="checkbox">
                <span class="input-description">- Live</span>
            </div>
            <br>
            <button type="submit" class="btn">
                Save
            </button>
        </form>
    </div>
</body>
</html>