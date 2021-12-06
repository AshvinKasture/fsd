<?php

require "../../conn.php";

session_start();


if (isset($_SESSION["isLoggedIn"]) && $_SESSION["isLoggedIn"]) {
    header("Location: ../");
}

if (isset($_POST["login"])) {
    $query = "SELECT password FROM users WHERE username='{$_POST['username']}';";

    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if ($row["password"] == hash('sha256', $_POST["password"])) {
            echo "Correct password";
            $_SESSION["isLoggedIn"] = true;
            $_SESSION["user"] = $_POST["username"];
            header("Location: ../");
        } else {
            echo "Wrong password";
            $_SESSION["msg"] = "incorrect-credentials";
            header("Location: ./");
        }
    } else {
        echo "There is no user";
        $_SESSION["msg"] = "incorrect-credentials";
        header("Location: ./");
    }
}
