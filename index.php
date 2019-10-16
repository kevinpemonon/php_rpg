<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="script.js"></script>
</head>
<body>
    <form action="traitement.php" method="post">
        <input type="text" name="pseudo">
        <button type="" name="" value="">Nouveau personnage</button>
    </form>
    <form action="traitement.php" method="post">
        <div id="users">

<?php
    require_once('Database.php');
    $db = connectDb();

    $req = $db->query('SELECT name FROM users');
    $allUsers = $req->fetchAll();

    foreach ($allUsers as $user){
        echo'
            <div id="user">
                <input type=radio name="existing_player" value="'. $user['name'] .'"><placeholder>'. $user['name'] .'</placeholder>
            </div>';
    }
?>
        </div>
        <button type="submit" name="continue" value="">Jouer avec ce personnage</button>
    </form>
</body>
</html>