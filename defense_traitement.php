<?php

    session_start();

    require_once('Database.php');
    $db = connectDb();

    if (isset($_SESSION['monster'])){

        $monster = $_SESSION['monster'];

        if (isset($_SESSION['pseudo'])){

            $pseudo = $_SESSION['pseudo'];
            
            $req = $db->prepare('SELECT * FROM users WHERE name = ?');
            $data = $req->execute(array($pseudo));
            $data = $req->fetchAll();
            $current_perso = $data[0];

            var_dump($current_perso);
            
            $req = $db->prepare('SELECT * FROM monsters WHERE name = ?');
            $data = $req->execute(array($monster));
            $data = $req->fetchAll();
            $current_monster = $data[0];

            var_dump($current_monster);

            if ($current_perso['defense'] > $current_monster['attack']){

                $result = 0;
                $content = $current_perso['name'] . " se défend. " . $current_monster['name']. " inflige " . $result . " points de dégâts.";
            }
            else{

                $result = $current_monster['attack'] - $current_perso['defense'];
                $content = $current_perso['name'] . " se défend. " . $current_monster['name']. " inflige " . $result . " points de dégâts.";
            }

            $req = $db->query('UPDATE users SET life = life -'. $result);
            
            $message = $db->prepare('INSERT INTO messages (content) VALUES (?)');
            $message->execute(array($content));
        }
    }

    header('Location: game.php');