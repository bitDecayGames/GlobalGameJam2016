
if (streamingHeartsCount > 0 && heartsCoolDown < stepsBetweenHearts){
    heartsCoolDown ++;
} else if (streamingHeartsCount > 0){
    streamingHeartsCount--;
    heartsCoolDown = 0
    var heartFlyForce_Y = -2;
    var heartFlyForce_X = 1;
    
    var inst = instance_create(x, y, obj_heart);
    with (inst){
        physics_apply_impulse(x, y, random_range(-heartFlyForce_X, heartFlyForce_X), heartFlyForce_Y);
    }
}
