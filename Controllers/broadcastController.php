<?php
    include_once '../Models/broadcastModel.php';
    $broadcastModel = new BroadcastModel();

    $action = $_POST['action'];
    switch ($action) {
        case 'add':
            $start = $_POST['date_start'] . ' ' . $_POST['time_start'] . ':00';
            $end = $_POST['date_end'] . ' ' . $_POST['time_end'] . ':00';
            $broadcastModel->addNewBroadcast(
                $_POST['id'],
                $_POST['channelID'],
                $_POST['episodeID'],
                $start,
                $end,
                !empty($_POST['outsideSE']) ? 'Y' : 'N',
                !empty($_POST['live']) ? 'Y' : 'N',
                !empty($_POST['reprise']) ? 'Y' : 'N'
            );
            header('Location: ../index.php');
            break;
        case 'delete':
            $broadcastModel->deleteBroadcast($_POST['id']);
            header('Location: ../admin.php');
            break;
        default:
            # code...
            break;
    }