<?php

if (isset($_GET["id"])) {

    $id = $_GET["id"];

    require('../../conn.php');
    $query = "DELETE FROM blogs WHERE id='{$id}'";
    $conn->query($query);
    header('Location: ../');
}
