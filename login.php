<?php
    require_once 'Models/loginModel.php';
    $loginModel = new LoginModel();

    // Check if the user is already logged in
    if($loginModel->isLoggedIn()) {
        header('Location: admin.php');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <link rel="stylesheet" href="CSS/buttons.css" />
    <link rel="stylesheet" href="CSS/input.css" />
    <link rel="stylesheet" href="CSS/login.css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;display=swap" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>Login</title>
</head>
<body>
    <div class="center-content">
        <div class="card login-container">
            <form action="Controllers/loginController.php?action=login" method="POST">
                <h2>Logga in</h2>
                <div class="input-container">
                    <span class="input-description">E-post</span>
                    <input name="email" type="text" placeholder="E-post">
                </div>
                <div class="input-container">
                    <span class="input-description">Lösenord</span>
                    <input name="password" type="password" placeholder="Lösenord">
                </div>
                <?php
                    if(!empty($_GET['status'])) {
                        if($_GET['status'] == 'wrong') {
                            ?>
                                <p class="error-text">
                                    Fel lösen eller e-post
                                </p>
                            <?php
                        }
                    }
                    else {
                        ?>
                            <br/>
                        <?php
                    }
                ?>
                <div class="btn submit-btn">
                    Logga in
                </div>
            </form>
        </div>
    </div>
    <script src="JS/input.js"></script>
</body>
</html>