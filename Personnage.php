<?php

    require_once('Database.php');


    function create($pseudo){

        $name = $pseudo;
        $life = 100;
        $max_life = 100;
        $attack = 10;
        $defense = 5;
        $level = 1;
        $next_level = 100;
        $xp = 0;

        $db = connectDb();
        $allPseudo = $db->query('SELECT name FROM users')->fetchAll();

        $req = $db->prepare('INSERT INTO users (name, life, max_life, attack, defense, level, next_level, xp) VALUES (?, ?, ?, ?, ?, ?, ?, ?)');
        $req->execute(array($name, $life, $max_life, $attack, $defense, $level, $next_level, $xp));

    }


    function hello(){

        return '<p>Je m\'appelle' . $this->name . ', il me reste ' . $this->life . ' points de vie.</p>';
    }



?>