var inst0 = instance_create(x - 80, y - 20, obj_danceHint);
with(inst0){
    switch(other.random_dance_ritual){
        case 1: 
        sprite_index = spr_danceTwerk;
        break;
        case 2: 
        sprite_index = spr_danceThriller;
        break;
        case 3: 
        sprite_index = spr_danceWorm;
        break;
    }
}

var inst1 = instance_create(x + 80, y - 20, obj_danceHint);
with(inst1){
    switch(other.random_dance_ritual){
        case 1: 
        sprite_index = spr_danceTwerk;
        break;
        case 2: 
        sprite_index = spr_danceThriller;
        break;
        case 3: 
        sprite_index = spr_danceWorm;
        break;
    }
}
