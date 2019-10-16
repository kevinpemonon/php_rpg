class Personnage {
    
    constructor($name){
        this.name = $name;
        this.life = 100;
        this.attack = 10;
    }

    attack($adversaire){
        $adversaire.life = life - this.attack;
    }

    scan(){
        return "Je m'appelle " + this.name + " et il me reste " + this.life + " points de vie."; 
    }
}

function create($name){
    $perso = new Personnage($name);
    return $perso.scan();
}