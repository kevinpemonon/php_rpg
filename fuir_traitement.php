<?php

    session_start();
    require('Database.php');
    $db = connectDb();
    
    $_SESSION['monster'] = 0;

    $content = "Vous avez fui.";
    $req = $db->prepare('INSERT INTO messages (content) VALUES (?)');
    $req->execute(array($content));

    header('Location: game.php');