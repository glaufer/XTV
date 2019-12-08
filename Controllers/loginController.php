<?php
require_once '../Models/loginModel.php';
$loginModel = new LoginModel();

$action = $_GET['action'];

switch ($action) {
    case 'login':
        $loginSuccess = $loginModel->login($_POST['email'], $_POST['password']);
        if($loginSuccess) {
            header('Location: ../admin.php');
        }
        else {
            header('Location: ../login.php?status=wrong');
        }
        break;

    case 'logout':
        $loginModel->logout();
        header('Location: ../index.php');
        break;
    
    default:
        break;
}