<?php

    session_start();
    require_once('Personnage.php');

    if (isset($_POST['continue'])){
        
        $pseudo = $_POST['existing_player'];
        $_SESSION['pseudo'] = $pseudo;
        header('Location: game.php');
    }

    else {
        
        if(isset($_POST['pseudo'])){

            $pseudo = $_POST['pseudo'];
            create($pseudo);
            $_SESSION['pseudo'] = $pseudo;
            header('Location: game.php');
        }
    }

