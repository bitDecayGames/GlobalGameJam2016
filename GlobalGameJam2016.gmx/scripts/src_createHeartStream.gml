var heartFlyForce_Y = -2;
var heartFlyForce_X = 1;

for (var i = 0; i < 5; i++){
    var inst = instance_create(x, y, obj_heart);
    with (inst){
        physics_apply_impulse(x, y, random_range(-heartFlyForce_X, heartFlyForce_X), heartFlyForce_Y);
    }
}
