<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="style.css">

    <title>Portfolio</title>
</head>

<body>




    <div class="container mt-5" id="login-container">
        <form action="./check_login.php" method="POST" id="loginForm">
            <div class="row mb-5">
                <div class="col col-3"></div>
                <div class="col col-2 login-label">
                    <label for="username">Username</label>
                </div>
                <div class="col col-3">
                    <input type="text" name="username" id="username">
                </div>
                <div class="col col-4"></div>
            </div>
            <div class="row mb-5">
                <div class="col col-3"></div>
                <div class="col col-2 login-label">
                    <label for="password">Password</label>
                </div>
                <div class="col col-3">
                    <input type="password" name="password" id="password">
                </div>
                <div class="col col-4"></div>
            </div>
            <div class="row mb-5">
                <div class="col col-5"></div>
                <div class="col col2">
                    <button type="submit" name="login" value="1" class="btn btn-primary">Login</button>
                </div>
                <div class="col col-5"></div>
            </div>
        </form>
    </div>

    <?php

    session_start();
    if (isset($_SESSION["msg"]) && $_SESSION["msg"] == "incorrect-credentials") {
        echo '<script>alert("Please check your login credentials");</script>';
    }

    ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="script.js"></script>

</body>

</html>