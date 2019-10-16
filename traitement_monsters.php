<?php

    session_start();

    $monster = $_POST['monster'];

    $_SESSION['monster'] = $monster;

    header('Location: game.php');
