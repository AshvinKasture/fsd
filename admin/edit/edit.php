<?php

if (isset($_POST["submit"])) {

    $id = $_POST["id"];
    $title = $_POST["title"];
    $short = $_POST["short"];
    $long = $_POST["long"];

    require('../../conn.php');

    $query = "UPDATE blogs SET title='{$title}', short_description='{$short}', long_description='{$long}' WHERE id='{$id}'";
    $conn->query($query);
}

header("Location: ../");
