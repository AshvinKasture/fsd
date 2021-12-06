<?php

session_start();

unset($_SESSION["isLoggedIn"]);
unset($_SESSION["user"]);

session_destroy();

header("Location: ./");
