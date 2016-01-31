var bloodFlyForce = 1;

for (var i = 0; i < 20; i++){
    var blood = obj_eggBlood1;
    if (random_range(-1, 1) <= 0) blood = obj_eggBlood2;
    var inst = instance_create(x + random_range(-5, 5), y + random_range(-5, 5), blood);
    with (inst){
        physics_apply_impulse(x + random_range(-5, 5), y + random_range(-5, 5), (x - other.x) * bloodFlyForce, (y - other.y) * bloodFlyForce);
    }
}
