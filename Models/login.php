<?php
    include_once 'database.php';
    $db = new DatabaseModel();

    $postedEmail = $_POST['email'];
    $postedPassword = $_POST['password'];

    $result = $db->dbSelectPrepared(
        'SELECT *
        FROM users
        WHERE email = ? AND password = ?', array($postedEmail, $postedPassword));


    if(!$result) {
        header('Location: ../login.php?status=wrong');
        return;
    }
    
    session_start();
    $_SESSION['userID'] = $result->id;
    header('Location: ../admin.php');
?>