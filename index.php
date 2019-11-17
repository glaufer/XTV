<?php
    @include_once 'Models/XTVData.php';
    $xtvData = new XTVData();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>XTV</title>
</head>
<body>
    <h1>XTV: Hello World</h1>
    <h2>Channels</h2>
    <pre>
    <?= print_r($xtvData->getAllChannels()) ?>
    </pre>
    <h2>Broadcasts</h2>
    <pre>
    <?= print_r($xtvData->getAllBroadcasts()) ?>
    </pre>
    <h2>Programs</h2>
    <pre>
    <?= print_r($xtvData->getAllPrograms()) ?>
    </pre>
    <h2>Episodes</h2>
    <pre>
        <?= print_r($xtvData->getAllEpisodes()) ?>
    </pre>
</body>
</html>