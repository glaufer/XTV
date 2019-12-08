<?php
    include_once 'Models/XTVData.php';
    include_once 'Models/settings.php';
    if($_SESSION['userID'] == null) {
        header('Location: login.php');
    }

    $xtvData = new XTVData();
    $allBroadcasts = $xtvData->getAllNestedBroadcastData();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <link rel="stylesheet" href="CSS/table.css" />
    <link rel="stylesheet" href="CSS/buttons.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;display=swap" rel="stylesheet" />
    <title>Admin</title>
</head>
<body>
    <div class="main-container">
        <h1>Admin</h1>
        <br/>
        <a href="manageBroadcast.php">
            <div class="btn">Lägg till sänding</div>
        </a>
        <br/>
        <table class="detailed-info__table detailed-info__table--interactive">
            <tr>
                <th>Kanal</th>
                <th>Namn</th>
                <th>Säsong</th>
                <th>Episode</th>
                <th>Start</th>
                <th>Inställningar</th>
            </tr>
            <?php
                foreach ($allBroadcasts as $data) {
                    ?>
                        <tr class="search-result-row" data-id="<?= $data->id ?>">
                            <td><?= $data->channel?></td>
                            <td><?= $data->name?></td>
                            <td><?= $data->season?></td>
                            <td><?= $data->epNumber?></td>
                            <td><?= $data->start?></td>
                            <td class="table-buttons">
                                <form method="POST" action="Controller/broadcastController.php">
                                    <input name="action" type="hidden" value="delete">
                                    <input name="id" type="hidden" value="<?= $data->id ?>">
                                    <button type="submit" class="btn btn-icon">
                                            <img src="../Assets/closeIconBlack.svg" alt="">
                                    </button>
                                </form>
                            </td>
                        </tr>
                    <?php
                }
            ?>
        </table>
    </div>
</body>
</html>