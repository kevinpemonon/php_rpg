<?php

    session_start();
    require_once('Database.php');

    $db = connectDb();

    $pseudo = $_SESSION['pseudo'];
    $req = $db->prepare('SELECT * FROM users WHERE name = ?');
    $req->execute(array($pseudo));
    $dataPseudo = $req->fetchAll();

    
    $monster = $_SESSION['monster'];
    $req = $db->prepare('UPDATE monsters SET life = life - '. $dataPseudo[0]['attack'] .' WHERE name = ?');
    $req->execute(array($monster));

    $req = $db->prepare('SELECT * FROM monsters WHERE name = ?');
    $req->execute(array($monster));
    $dataMonster = $req->fetchAll();

    $life_pseudo = $db->prepare('UPDATE users SET life = life - '. $dataMonster[0]['attack'] .' WHERE name = ?');
    $life_pseudo->execute(array($pseudo));

    $content =  $dataPseudo[0]['name'] . " a infligé " . $dataPseudo[0]['attack'] . " points de dégâts à " . $dataMonster[0]['name'] . ".</br></br>" .
                $dataMonster[0]['name'] . " a infligé " . $dataMonster[0]['attack'] . " points de dégâts à " . $dataPseudo[0]['name'] . ".";
            
    if ($dataPseudo[0]['life'] <= 0){
        $content = "Vous êtes mort.";
    }

    if ($dataPseudo[0]['life'] > 0 && (int)$dataMonster[0]['life'] <= 0){

        
        $xp_pseudo = $db->prepare('UPDATE users SET xp = xp + '. $dataMonster[0]['xp'] .' WHERE name = ?');
        $xp_pseudo->execute(array($pseudo));

        $life_monster = $db->prepare('UPDATE monsters SET life =' . $dataMonster[0]['max_life'] . ' WHERE name = ?');
        $life_monster->execute(array($monster));

        $nmb = rand(1,10);

        $content =  $dataMonster[0]['name'] . " est mort. </br></br>" .
                    $dataPseudo[0]['name'] . " gagne " . $dataMonster[0]['xp'] . " points d'expériences.";

        if ($nmb == 9){

            $object = $db->prepare('INSERT INTO objects (id_user, name, effect) VALUES (?, \'potion\', 50)');
            $object->execute(array($dataPseudo[0]['id']));

            $content =  $dataMonster[0]['name'] . " est mort. </br></br>" .
                        $dataPseudo[0]['name'] . " gagne " . $dataMonster[0]['xp'] . " points d'expériences. </br></br>" .
                        $dataPseudo[0]['name'] . " récupère une potion.";
        }
        
        $_SESSION['monster'] = 0;
    
    }

    $message = $db->prepare('INSERT INTO messages (content) VALUES (?)');
    $message->execute(array($content));

    header('Location: game.php');


