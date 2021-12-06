<?php

if (isset($_POST["submit"])) {


    require('../../conn.php');

    $id = uniqid();
    $title = $_POST["title"];
    $short = $_POST["short"];
    $long = $_POST["long"];

    $query = "INSERT INTO blogs(id, title, short_description, long_description) VALUES('{$id}','{$title}','{$short}','{$long}');";

    $conn->query($query);

    header("Location: ../");
}
