<?php


require('../conn.php');


// print_r($_POST);
if (isset($_POST["startCounter"])) {

    $startCounter = $_POST["startCounter"];
    $rowCount = 20;
    $query = "SELECT * FROM blogs ORDER BY timestamp DESC LIMIT {$startCounter}, {$rowCount};";
    // echo $query;
    $result = $conn->query($query);
    echo $conn->error;
    // $result = ->fetch_all($mode = MYSQLI_BOTH);
    $returner = json_encode($result->fetch_all($mode = MYSQLI_ASSOC));
    echo $returner;
    // return $returner;
} else {
    echo 'variable not set';
}
