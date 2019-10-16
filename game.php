<?php

    session_start();
    require_once('Database.php');

    if ($_SESSION['pseudo'] == null){
        header('Location: index.php');
    }

?>

            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <meta http-equiv="X-UA-Compatible" content="ie=edge">
                <link rel="stylesheet" href="style.css">
                <title>Game</title>
            </head>
            <body>
                <div id="top_screen">
                    <div id="left_screen">
                    </div>
                    <div id="right_screen">
                        <form action="deconnexion_traitement.php" method="" id="deconnexion">
                            <button type="submit">X</button>
                        </form>
                        <div id="messages">
<?php

    $db = connectDb();

    $req = $db->query('SELECT content FROM messages ORDER BY id DESC LIMIT 5');
    $messages = $req->fetchAll();
    $i = 0;

    foreach($messages as $message){

        if ($i == 0){

            echo '<p class="last_message">'.$message['content'].'</p>';
        } else {
            echo '<p>'.$message['content'].'</p>';
        }
        $i++;
    }

?>
                        </div>
                    </div>
                </div>
<?php

    if (isset($_SESSION['pseudo'])){
        
        $db = connectDb();
        $req = $db->prepare('SELECT * FROM users WHERE name = ?');
        $req->execute(array($_SESSION['pseudo']));
        $dataCurrentUser = $req->fetchAll();


        echo '  
                <div id="bottom_screen">
                    <div id="infos">
                        <table id="perso">
                            <tr id="title">
                                <td>Name</td>
                                <td>Life</td>
                                <td>Attack</td>
                                <td>Defense</td>
                                <td>Level</td>
                                <td>Xp</td>
                                <td>Next-level</td>
                            </tr>
                            <tr>
                                <td>'. $dataCurrentUser[0]['name'] .'</td>
                                <td>'. $dataCurrentUser[0]['life'] .'</td>
                                <td>'. $dataCurrentUser[0]['attack'] .'</td>
                                <td>'. $dataCurrentUser[0]['defense'] .'</td>
                                <td>'. $dataCurrentUser[0]['level'] .'</td>
                                <td>'. $dataCurrentUser[0]['xp'] .'</td>
                                <td>'. $dataCurrentUser[0]['next_level'] .'</td>
                            </tr>
                        </table>';


        if (isset($_SESSION['monster'])){

            
            if ($_SESSION['monster'] !== 0){
                

                $monster = $_SESSION['monster'];

                $db = connectDb();
                $req = $db->prepare('SELECT * FROM monsters WHERE name = ?');
                $req->execute(array($monster));
                $monster = $req->fetchAll();


                echo '  <table id="monster">
                            <tr id="title">
                                <td>Name</td>
                                <td>Life</td>
                                <td>Attack</td>
                                <td>Xp</td>
                            </tr>
                            <tr>
                                <td>'. $monster[0]['name'] .'</td>
                                <td>'. $monster[0]['life'] .'</td>
                                <td>'. $monster[0]['attack'] .'</td>
                                <td>'. $monster[0]['xp'] .'</td>
                            </tr>
                        </table>
                    </div>';


            echo'   <div id="menu">
                        <div id="actions">
                            <h3 id="titre_actions">ACTIONS : </h3>
                            <form action="attack_traitement.php" method="">
                                <button id="attack_button">ATTAQUER</button>
                            </form>      
                            <form action="defense_traitement.php" method="">
                                <button id="defense_button">SE DEFENDRE</button>
                            </form>
                            <form action="fuir_traitement.php" method="">
                                <button id="fuite_button">FUIR</button>
                            </form>
                        </div>
                        <div id="objects">
                            <h3 id="titre_objects">OBJETS : </h3>';

            
            $objects = $db->query('SELECT * FROM objects')->fetchAll();

            $nmb_objects = 0;

            foreach($objects as $object){

                if ($object['id_user'] == $dataCurrentUser[0]['id']){

                    $nmb_objects ++;
                    
                    echo'       <form>
                                    <button id="'.$object['name'].'_button">'. strtoupper($object['name']) .'</button>
                                </form>';
                }

            }

            for($i= 0; $i < 4-$nmb_objects; $i++){
                echo'           <form>
                                    <button id="vide"></button>
                                </form>';
            }

            echo '           
                        </div>
                    </div>';

            } else {
            
            echo '  </div>
                    <div id="menu">
                        <div id="list_monsters">
                            <form action="traitement_monsters" method="post" id="monsters">
                                <div class="monster_training">
                                    <placeholder>Gobelin</placeholder><input type="radio" name="monster" value="gobelin"> 
                                </div>
                                <div class="monster_training">
                                    <placeholder>Rat</placeholder><input type="radio" name="monster" value="rat"> 
                                </div>
                                <div class="monster_training">
                                    <placeholder>Elfe</placeholder><input type="radio" name="monster" value="elfe"> 
                                </div>
                                <input type="submit" value="VALIDER">
                            </form>
                        </div>
                        <div id="objects">
                            <h3 id="titre_objects">OBJETS : </h3>';

            $objects = $db->query('SELECT * FROM objects')->fetchAll();
            $nmb_objects = 0;

            foreach($objects as $object){

                if ($object['id_user'] == $dataCurrentUser[0]['id']){

                    $nmb_objects ++;
                    
                    echo'       <form action="object_traitement.php">
                                    <button id="'.$object['name'].'_button" value="potion_'. $nmb_objects .'">'. strtoupper($object['name']) .'</button>
                                </form>';
                }

            }

            for($i= 0; $i < 4-$nmb_objects; $i++){
                echo'           <form>
                                    <button id="vide"></button>
                                </form>';
            };


            echo '       </div>';
            }

        } else {
            
            echo '  </div>
                    <div id="menu">
                        <div>
                            <form action="traitement_monsters" method="post" id="monsters">
                                <div class="monster">
                                    <placeholder>Gobelin</placeholder><input type="radio" name="monster" value="gobelin"> 
                                </div>
                                <div class="monster">
                                    <placeholder>Rat</placeholder><input type="radio" name="monster" value="rat"> 
                                </div>
                                <div class="monster">
                                    <placeholder>Elfe</placeholder><input type="radio" name="monster" value="elfe"> 
                                </div>
                                <input type="submit" value="VALIDER">
                            </form>
                        </div>
                        <div id="objects">
                            <h3 id="titre_objects">OBJETS : </h3>';

            $objects = $db->query('SELECT * FROM objects')->fetchAll();
            $nmb_objects = 0;

            foreach($objects as $object){

                if ($object['id_user'] == $dataCurrentUser[0]['id']){

                    $nmb_objects ++;
                    
                    echo'       <form>
                                    <button id="'.$object['name'].'_button">'. strtoupper($object['name']) .'</button>
                                </form>';
                }

            }

            for($i= 0; $i < 4-$nmb_objects; $i++){
                echo'           <form>
                                    <button id="vide"></button>
                                </form>';
            };
            
            echo '        </div>';
        }

        echo '      
                </div>
            </body>
            </html>';

    }
